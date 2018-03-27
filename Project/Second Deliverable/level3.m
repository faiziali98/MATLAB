
close all
fig2=figure;
iskl=imread('game3.png');
imshow(iskl);
r=7.5;
rectangle('position',[102-r,192-r,15,15],'curvature',[1,1],'facecolor',rand(1,3));
rectangle('position',[158-r,136-r,15,15],'curvature',[1,1],'facecolor',rand(1,3));
rectangle('position',[335-r,217-r,15,15],'facecolor',rand(1,3),'curvature',[1,1]);
rectangle('position',[374-r,258-r,15,15],'facecolor',rand(1,3),'curvature',[1,1]);


set(fig2, 'WindowButtonUpFcn', 'a = get(gca, ''CurrentPoint'')');
a=zeros(2,3);
l=1;

while l
    if a(1,2)>=357 && a(1,2)<=422 && a(1,1)>=62 && a(1,1)<=137
    [x,y]=ginput(1);
    [v,u]=ginput(1);
    line([x,v],[y,u],'color','k')
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