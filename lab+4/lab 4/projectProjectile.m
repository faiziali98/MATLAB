axis equal
hold on
axis([0,100,0,100])

% user interface
rectangle('position',[0,0,100,100],'facecolor','b');


cenx=(5+(45-5)).*rand;
ceny=(5+(95-5)).*rand;

x=cenx+[0,4,0,-4,0];
y=ceny+[-2,0,2,0,-2];
fill(x,y,'r')

% cannon ball
th=0:360;
r=4;

cex=4;
cey=4;

x1=cex+r.*cosd(th);
y1=cey+r.*sind(th);


h=fill(x1,y1,'g');

[x2,y2]=ginput(1);

s=atand(y2/x2);

d1=((x2-4).^2+(y2-4).^2).^0.5;
vi=d1;


gg=10;

tmax=(2.*vi.*sind(s))/gg;

for t=0:0.1:tmax
    xt=(vi.*t.*cosd(s));
    yt=(vi.*t.*sind(s))-(gg*t.^2)/2;
    
    th=0:360;
    r=4;
    

    set(h,'XData',[x1+xt]);set(h,'YData',[y1+yt]);
    
    pause(0.01);
    

end
