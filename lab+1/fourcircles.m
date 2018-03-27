% draw green circle
theta=0:360;
r=5;
x= r*cosd(theta);
y= r*sind(theta);
fill(x,y,'g');
axis equal
hold on

% draw maroon circle
theta=0:360;
r=4;
x= r*cosd(theta);
y= r*sind(theta);
fill(x,y,'m');

% draw red circle
theta=0:360;
r=3;
x= r*cosd(theta);
y= r*sind(theta);
fill(x,y,'r');

% draw blue circle
theta=0:360;
r=2;
x= r*cosd(theta);
y= r*sind(theta);
fill(x,y,'b');