"""Integer fixed-point model for explicit precision experiments, not float truth."""
from pathlib import Path
import random,json
S=1<<23

def inside(x,y):
    tx=x>>9;ty=y>>9;u=tx-4096;yy=ty*ty;q=(u*u+yy)>>14
    return (-5*S//4<=x<=S//2 and -S<=y<=S and
            ((tx+16384)**2+yy+(1<<19)<1<<24 or q*(q+u)+(1<<21)<yy>>2))

def count(x,y,w,limit=1000,shortcut=True):
    if shortcut and limit and inside(x,y):return limit
    x>>=27-w;y>>=27-w
    f=w-4;lo=-(1<<(w-1));hi=(1<<(w-1))-1
    def sat(a):return min(hi,max(lo,a))
    rr=ii=ri=0
    for n in range(1,max(1,limit)+1):
        zr=sat(rr-ii+x);zi=sat(2*ri+y)
        rr=sat((zr*zr)>>f);ii=sat((zi*zi)>>f);ri=sat((zr*zi)>>f)
        if rr+ii>4*(1<<f):return n
    return max(1,limit)

if __name__=='__main__':
    work=Path(__file__).parent/'work';work.mkdir(exist_ok=True)
    rng=random.Random(0x2418)
    points=[]
    for i in range(2048):
        if i<1024:
            x=-6291456+(rng.randrange(1920)-960)*18641
            y=(540-rng.randrange(1080))*18641
        elif i<1536:
            x=-6240240+rng.randrange(-4096,4096)
            y=1106551+rng.randrange(-4096,4096)
        else:
            x=rng.randrange(-8*S,8*S);y=rng.randrange(-8*S,8*S)
        points.append((x,y))
    summary={}
    base=[count(x,y,27) for x,y in points]
    for w in [27,24,21,18]:
        counts=[count(x,y,w) for x,y in points]
        lines=[]
        for (x,y),n in zip(points,counts):
            packed=((x&((1<<27)-1))<<60)|((y&((1<<27)-1))<<33)|(int(inside(x,y))<<32)|n
            lines.append(f'{packed:022x}')
        (work/f'precision_w{w}.mem').write_text('\n'.join(lines)+'\n')
        summary[w]={'sample_count':len(points),'iteration_counts_differ_from_27bit':sum(a!=b for a,b in zip(base,counts))}
    # Pixel-addressed engine oracle, preserving original Q4.23 raster coordinates.
    engine=[]
    for y in range(64):
        for x in range(128): engine.append(count(-16777216+x*196608,6291456-y*196608,24))
    (work/'engine_w24_counts.mem').write_text('\n'.join(f'{n:04x}' for n in engine)+'\n')
    (work/'precision_model_summary.json').write_text(json.dumps(summary,indent=2)+'\n')
    print(json.dumps(summary))
