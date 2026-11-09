"""Integer-only model versus exact Q4.23 cardioid/bulb inequalities."""
import random
from pathlib import Path
S=1<<23
rng=random.Random(0x1A51DE)
hits=0
vectors=[]
for i in range(1_000_000):
    # Mix a broad signed domain with dense sampling around both useful regions.
    lo,hi=(-8*S,8*S) if i%4==0 else (-2*S,S)
    x=rng.randrange(lo,hi); y=rng.randrange(-S,S) if i%4 else rng.randrange(-8*S,8*S)
    tx=x>>9; ty=y>>9; u=tx-4096
    yy=ty*ty; q=(u*u+yy)>>14
    inside=(-5*S//4<=x<=S//2 and -S<=y<=S and
            ((tx+16384)**2+yy+(1<<19)<1<<24 or q*(q+u)+(1<<21)<yy>>2))
    if i<65536:
        vectors.append(f'{(((x & ((1<<27)-1))<<28) | ((y & ((1<<27)-1))<<1) | int(inside)):014x}')
    if inside:
        ux=x-S//4; qe=ux*ux+y*y
        exact=(4*((x+S)**2+y*y)<S*S or 4*qe*(qe+ux*S)<y*y*S*S)
        assert exact,(x,y)
        hits+=1
assert hits>10000
print(f'PASS: 1,000,000 coordinates; {hits} shortcut hits; zero false positives')

work=Path(__file__).resolve().parent/'work'
work.mkdir(exist_ok=True)
(work/'inside_vectors.mem').write_text('\n'.join(vectors)+'\n')
