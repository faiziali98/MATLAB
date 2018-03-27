y = [ 0 1 0 -1 0 -2 -3 -1 0 2 3 1];
x = [ 0 1 2 1 0 0 1 1 0 0 1 1];
theta=35;
x2=x.*cos(theta)-y.*sin(theta);
y2=x.*sin(theta)+y.*cos(theta);
plot (x2,y2);

