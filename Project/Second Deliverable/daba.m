
close all
clear all
clc
hold on

axis equal
axis ([-10,190,0,100])

xl=0:2:90;
yl=[30*ones(1,15),30:2:90];
plot(xl,yl)


t=zeros(1,4);

xd=xl(1);
yd=yl(1);

x=[xd,xd,xd-6,xd-6];
y=[yd,yd+4,yd+4,yd];
h=fill(x,y,rand(1,3));
z=2;

while 1
    
    if yl(z)~= yl(z-1)
        th=atand(yl(z)/xl(z));
        xd=xl(z) - 3;
        yd=yl(z);
% th = 45;
        x=[xd+cosd(th)*-3 - sind(th)*-2,cosd(th)*3 - sind(th)*-2 + xd,cosd(th)*3 - sind(th)*(2)+ xd,cosd(th)*(-3) - sind(th)*2 + xd];
        y=[sind(th)*-3 + cosd(th)*-2+yd,sind(th)*3 + cosd(th)*-2 + yd,sind(th)*3 + cosd(th)*(2) + yd,sind(th)*(-3) + cosd(th)*2 + yd];

    else
        yd=yl(z);
        xd=xl(z);
        x=[xd,xd,xd-6,xd-6];
        y=[yd,yd+4,yd+4,yd];
    end
    
    set(h,'xData',x,'yData',y)
    z=z+1;
    pause(0.1)
    
    if z>46
        break;
    end
    
end