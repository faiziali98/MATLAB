clear all
axis equal
axis ([0,200,0,200])
h = rectangle('Position', [50 50 100 100], 'facecolor','r', 'curvature', [1 1]);

for i=10:10:50
z=i*2;
w=50-i;
r=100+z;
k=i/60;
a=1-k;
b=1-k;
c=1-k;
clr=[a 1 0];
set(h, 'Position', [w 50 r 100], 'facecolor', clr);
pause(0.1);
end

for i=10:10:50
z=i*2;
w1=w+i;
r2=r-z;
k1=i/150;
a1=1-k1;
b1=1-k1;
c1=1-k1;
clr=[a1 0 1];
set(h, 'Position', [w1 50 r2 100], 'facecolor', clr);
pause(0.1);
end
 
for i=10:10:50
z=i*2;
w=50-i;
r=100+z;
k2=i/200;
a2=1-k2;
b2=1-k2;
c2=1-k2;
clr=[1 b2 0]; 
set(h, 'Position', [50 w 100 r], 'facecolor', clr);
pause(0.1);
end

for i=10:10:50
z=i*2;
w1=w+i;
r2=r-z;
k3=i/70;
a3=1-k3;
b3=1-k3;
c3=1-k3;
clr=[0 1 c3];
set(h, 'Position', [50 w1 100 r2], 'facecolor', clr);
pause(0.1);
end