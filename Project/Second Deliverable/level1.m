
close all

a=1000;
h = waitbar(0,'LOADING...');

for a1=1:a
    waitbar(a1/a,h);
end

close all

fig2=figure;
axis equal
iskl=imread('game2.png');
% image(iskl,'xData',[0,600],'yData',[0,420]);
% axis ([0,599,0,420])
imshow(iskl)
hold on
t=zeros(1,4);
% text (200,20,['Player Name : ',g])

x1=-5;
y1=119;
ln=25;
wd=20;
t(1)=rectangle('position',[x1,y1,ln,wd],'facecolor',rand(1,3));
t(2)=rectangle('position',[x1-ln,y1,ln,wd],'facecolor',rand(1,3));
t(3)=rectangle('position',[x1-ln,y1,ln,wd],'facecolor',rand(1,3));

xf=[x1+ln,x1+ln,x1+ln+15,x1+ln+ln];
yf=[y1+wd,y1,y1,y1+wd];

t(4)=fill(xf,yf,'k');

rectangle('position',[201-10,180,15,15],'curvature',[1,1],'facecolor',rand(1,3));
rectangle('position',[293,190,15,15],'curvature',[1,1],'facecolor',rand(1,3));
rectangle('position',[428,258,15,15],'facecolor',rand(1,3),'curvature',[1,1]);

set(fig2, 'WindowButtonUpFcn', 'a = get(gca, ''CurrentPoint'')');
a=zeros(2,3);
l=1;

while l
    if a(1,2)>=357 && a(1,2)<=422 && a(1,1)>=62 && a(1,1)<=137
    [x,y]=ginput(1);
    [v,u]=ginput(1);
    line([x,v],[y,u],'color','k','LineWidth',5);
    a(1,1)=0; 
    end
    if a(1,2)>=357 && a(1,2)<=422 && a(1,1)>=151 && a(1,1)<=223
    [x,y]=ginput(1);
    [v,u]=ginput(1);
    hold on
    plot([x,v],[y,u],'color','k')
    a(1,1)=0;
    end
    if a(1,2)>=357 && a(1,2)<=422 && a(1,1)>=501 && a(1,1)<=595
    l=0;  
    end 
    pause(0.1)
end