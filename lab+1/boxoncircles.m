% box
theta=45:90:360;
r=10;
xc=10;
yc=10;
x=xc+r*cosd(theta);
y=yc+r*sind(theta);
fill(x,y,'g');
axis equal
hold on
% circle
theta=0:360;
r=2;
xc=6;
yc=3;
x=xc+r*cosd(theta);
y=yc+r*sind(theta);
fill(x,y,'r');
% circle 2
theta=0:360;
r=2;
xc=14;
yc=3;
x=xc+r*cosd(theta);
y=yc+r*sind(theta);
fill(x,y,'r');






