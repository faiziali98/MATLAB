clear all

t=0:360;
r=10;
lk=15.*rand; 
pk=15.*rand;
a=3;
b=3;
x=a+r.*cosd(t);
y=b+r.*sind(t);

fill (x,y,'y')
axis equal
hold on
axis ([-60,60,-60,60])

t=0:360;
r=25;
a=3;
b=3;

x=a+r.*cosd(t);
y=b+r.*sind(t);

plot (x,y)

t=0:360;
r=35;
x=3+r.*cosd(t);
y=3+r.*sind(t);
plot(x,y)

t=0:360;
r=45;
x=3+r.*cosd(t);
y=3+r.*sind(t);
plot (x,y)

cl=rand(1,3);
tt=rand(1,3);
pp=rand(1,3);

h = rectangle('Position', [20 9 5 5], 'facecolor', cl, 'curvature', [1 1]);
h1 = rectangle('Position', [15 27 5 5], 'facecolor', tt, 'curvature', [1 1]);
h2 = rectangle('Position', [-47 5 5 5], 'facecolor', pp, 'curvature', [1 1]);

pk=60*rand;
lk=40*rand;
sk=30*rand

for i = 0:360
xcor=25.*cosd(i+pk);
ycor=25.*sind(i+pk);
set(h, 'Position', [xcor, ycor, 5, 5]);
xcor1=35.*cosd(i+sk);
ycor1=35.*sind(i+sk);
set(h1, 'Position', [xcor1, ycor1, 5, 5]);
xcor2=45.*cosd(i+lk);
ycor2=45.*sind(i+lk);
set(h2, 'Position', [xcor2, ycor2, 5, 5]);
pause(0.01);
end;