close all
clear all
clc
hold on

axis equal
axis ([0,200,0,100])

xl=0:2:90;
yl=[30*ones(1,15),30:2:90];
plot(xl,yl)


t=zeros(1,4);

x=15;
y=60;

t(1)=rectangle('position',[x,y,6,4],'facecolor',rand(1,3));
t(2)=rectangle('position',[x-6,y,6,4],'facecolor',rand(1,3));
t(3)=rectangle('position',[x-12,y,6,4],'facecolor',rand(1,3));

xf=[x+6,x+6,x+8,x+12];
yf=[y,y+4,y+4,y];

t(4)=fill(xf,yf,'k');
z=1;
while 1
    
    x=xl(z);
    y=yl(z);
    xf=[x+6,x+6,x+8,x+12];
    yf=[y,y+4,y+4,y];
    set(t(1),'position',[x,y,6,4])
    set(t(2),'position',[x-6,y,6,4])
    set(t(3),'position',[x-12,y,6,4])
    set(t(4),'xData',xf,'yData',yf)
    z=z+1;
    pause(0.1)
    
end
    
    