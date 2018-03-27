close all
fig2=figure;
axis equal
iskl=imread('game.png');
imshow(iskl);
rectangle('position',[238.5,172.5,15,15],'curvature',[1,1],'facecolor',rand(1,3));
rectangle('position',[271-7.5,229-7.5,15,15],'curvature',[1,1],'facecolor',rand(1,3));
rectangle('position',[306-7.5,273-7.5,15,15],'facecolor',rand(1,3),'curvature',[1,1]);
rectangle('position',[416-7.5,328-7.5,15,15],'facecolor',rand(1,3),'curvature',[1,1]);




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