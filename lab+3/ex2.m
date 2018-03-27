clear all;

R=1500;
r=0.0005;
p=525;
t=0:361;

axis equal;
hold on;


x=(R-r).*cosd(t) + p.*cosd((R-r)*t/r);
y=(R-r).*sind(t) - p.*sind((R-r)*t/r);

fill(x,y,'r');

R=900;
r=0.0005;
p=525;
t=0:361;

x=(R-r).*cosd(t) + p.*cosd((R-r)*t/r);
y=(R-r).*sind(t) - p.*sind((R-r)*t/r);

fill(x,y,'g');
R=700;
r=0.005;
p=500;
t=0:361;

x=(R-r).*cosd(t) + p.*cosd((R-r)*t/r);
y=(R-r).*sind(t) - p.*sind((R-r)*t/r);

fill(x,y,'b');
