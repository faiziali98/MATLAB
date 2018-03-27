clear all

%% Initialization
axis equal
axis ([-60,70,-60,60])
m=0.5;
k=3;
b=0.1;
vel(1)=[-10];
x=2.5;
h=rectangle('position',[x,0,2,2],'facecolor','r');

t=0.01;

while 1
    %% Difining Accelaration
    a=(-k/m).*x-(b/m).*vel(1);
    %% Changing Velocity
    vel(1)=vel(1)+a.*t;
    %% Changing Position
    x=x+vel(1);
    set(h,'position',[x,0,20,20]);
    pause(0.1);
end
