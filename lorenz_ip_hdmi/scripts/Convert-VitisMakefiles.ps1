[CmdletBinding(SupportsShouldProcess)]
param(
    [Parameter(Position = 0)]
    [string] $Root = (Join-Path $PSScriptRoot '..\ip_repo'),

    [switch] $WindowsCommands,

    [switch] $NoBackup
)

$ErrorActionPreference = 'Stop'
$resolvedRoot = (Resolve-Path -LiteralPath $Root).Path
$makefiles = Get-ChildItem -LiteralPath $resolvedRoot -Recurse -File -Filter 'Makefile'

if (-not $makefiles) {
    Write-Warning "No Makefiles found under $resolvedRoot"
    exit 0
}

$changedCount = 0

foreach ($makefile in $makefiles) {
    $original = [System.IO.File]::ReadAllText($makefile.FullName)
    $updated = $original

    # Repair malformed forms such as $(wildcard*.h) and ($wildcard *.c),
    # which expand to an empty/invalid value and can make the compiler or
    # copy command receive no source files.
    $updated = $updated -replace '\$\(wildcard\s*\*\.h\)', '$(wildcard *.h)'
    $updated = $updated -replace '\$\(wildcard\s*\*\.c\)', '$(wildcard *.c)'
    $updated = $updated -replace '\$\(wildcard\s*\*\.o\)', '$(wildcard *.o)'
    $updated = $updated -replace '\(\$wildcard\s+\*\.h\)', '$(wildcard *.h)'
    $updated = $updated -replace '\(\$wildcard\s+\*\.c\)', '$(wildcard *.c)'
    $updated = $updated -replace '\(\$wildcard\s+\*\.o\)', '$(wildcard *.o)'

    # Convert unexpanded globs to GNU Make file lists. This works with the
    # Windows Vitis toolchain and prevents a missing-file glob being passed
    # literally to the compiler/copy command.
    $updated = $updated -replace '(?m)^(INCLUDEFILES\s*=\s*)\*\.h\s*$', '${1}$(wildcard *.h)'
    $updated = $updated -replace '(?m)^(LIBSOURCES\s*=\s*)\*\.c\s*$', '${1}$(wildcard *.c)'
    $updated = $updated -replace '(?m)^(OUTS\s*=\s*)\*\.o\s*$', '${1}$(wildcard *.o)'

    # Use the make executable already running the build rather than relying
    # on another `make` being discoverable through PATH.
    $updated = $updated -replace '(?m)^([\t ]*)make clean\s*$', '${1}$(MAKE) clean'

    if ($WindowsCommands) {
        # Use this only when Vitis invokes GNU Make with SHELL=CMD.
        $updated = $updated -replace '(?m)^CP\s*=\s*cp\s*$', 'CP=copy /Y'
        $updated = $updated -replace '(?m)^([\t ]*)rm -rf \$\{OUTS\}\s*$', '${1}-if not "$(OUTS)"=="" del /Q $(OUTS) 2>NUL'
    }

    if ($updated -eq $original) {
        Write-Verbose "No changes: $($makefile.FullName)"
        continue
    }

    if ($PSCmdlet.ShouldProcess($makefile.FullName, 'convert Vitis driver Makefile')) {
        if (-not $NoBackup) {
            Copy-Item -LiteralPath $makefile.FullName -Destination ($makefile.FullName + '.bak') -Force
        }

        # Vitis driver Makefiles are plain ASCII; avoid adding a UTF-8 BOM.
        [System.IO.File]::WriteAllText(
            $makefile.FullName,
            $updated,
            [System.Text.UTF8Encoding]::new($false)
        )
        Write-Host "Updated: $($makefile.FullName)"
        $changedCount++
    }
}

Write-Host "Processed $($makefiles.Count) Makefile(s); changed $changedCount."
