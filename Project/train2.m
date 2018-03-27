function [ t,wd,ln,jjt,xt1,xt2,yt1,yt2,post1,post2 ] = train2( x1,y1 )

t=zeros(1,4);

ln=70;
wd=20;
jjt=30;
post1=[x1+10,y1+wd];
post2=[x1+50,y1+wd];

k=0:360;

xt1=[post1(1)+ 5.*cosd(k)];yt1=[post1(2)+5.*sind(k)];
xt2=[post2(1)+ 5.*cosd(k)];yt2=[post2(2)+5.*sind(k)];


t(1)= fill(xt1,yt1,'k');
t(2)= fill(xt2,yt2,'k');

xf=[x1,x1,x1+jjt,x1+ln];
yf=[y1+wd,y1,y1,y1+wd];

t(4)=fill(xf,yf,'b');



end

