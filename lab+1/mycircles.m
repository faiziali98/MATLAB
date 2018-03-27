% draw a Circle with radius 5 using green color
theta = 0:360;
r = 5;
x = r*cosd(theta);
y = r*sind(theta); 
fill(x,y, 'g');
hold on
axis equal
axis([-2 2 -2 2])