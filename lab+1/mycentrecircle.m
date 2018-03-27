% to draw circle with arbitrary center
theta= 0:360;
r= 5;
xc= 5;
yc= -5;
x= xc+r*cosd(theta);
y= yc+r*sind(theta);
fill(x,y,'r');
axis equal
clc
