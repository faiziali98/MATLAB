%one thing
theta=0:360;
r=3;
xc=30;
yc=25;
x=xc+r*cosd(theta);
y=yc+r*sind(theta);
fill(x,y,'y');
axis equal
hold on
%2 thing
theta=90:120:360;
r=8.5;
xc=10;
yc=21;
x=xc+r*cosd(theta);
y=yc+r*sind(theta);
fill(x,y,'r');
% box
theta=45:90:360;
r=10;
xc=10;
yc=10;
x=xc+r*cosd(theta);
y=yc+r*sind(theta);
fill(x,y,'g');
% box
theta=45:90:360;
r=10;
xc=20;
yc=10;
x=xc+r*cosd(theta);
y=yc+r*sind(theta);
fill(x,y,'g');


