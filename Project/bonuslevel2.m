close all

a=1000;
h = waitbar(0,'LOADING...');

for a1=1:a
    waitbar(a1/a,h);
end



clc
clear all
close all

axis equal
axis([0,100,0,100])
axis off
hold on
%% Graphics
title('Bonus Level')
set(gcf,'menubar','none')
rectangle('position',[0,0,100,100],'facecolor','r')

[r,s]=wavread('bck.wav');
[rd,sd]=wavread('mute.wav');
land=audioplayer(r,s);
gj=r;gy=s

hsurf11 = uicontrol('Style','pushbutton',...
    'String','mute','Position',[500,350,40,30], ...
    'Callback','r=rd;s=sd;land=audioplayer(r,s)');
hsurf13 = uicontrol('Style','pushbutton',...
    'String','sound','Position',[500,310,40,30], ...
    'Callback','r=gj;s=gy;land=audioplayer(r,s)');

text(0,60,'   THATS YOUR CHANCE FOR FUN','fontsize',15)
text(0,40,'   LETS SEE HOW GOOD YOU ARE','fontsize',15)

j=60;
lnx=zeros(1,j);
lny=zeros(1,j);
ln=zeros(1,j);
lnr=2.5;
vel=zeros(1,j);

for x = 1:j
    
    lnx(x)= randi([1,94],1,1);
    lny(x)= randi([105,300],1,1);
    
    ln(x)=rectangle('position',[lnx(x),lny(x),2*lnr,2*lnr],'facecolor','y','curvature',[1,1]);
    
    vel(x)=1.2+(4.5-1.2)*rand(1);
    
end

l=1;
d=zeros(1,j);

set(gcf, 'WindowButtondownFcn', 'a = get(gca, ''CurrentPoint'')')
a=zeros(2,3);
score=0;

while l
    
    for m=1:j
        
        d(m)=sqrt(((lnx(m)+lnr)-a(1,1))^2+((lny(m)+lnr)-a(1,2))^2);
        
        if d(m)<=2.5
            set(ln(m),'visible','off')
            lny(m)=-100;
            a(1,1)=0;
            a(1,2)=0;
            score =score+1;
        end
        
        
        lny(m)=lny(m)-vel(m);
        set(ln(m),'position',[lnx(m),lny(m),2*lnr,2*lnr]);
        
        
        
    end
    
    if max(lny)<=-5
        break
    end
    play(land)
    pause(0.1)
end

close all
fig4=figure('position',[500,300,300,300]);
axis off

text (-0.09,0.8,['You have got ',num2str(score),' Coins'],'fontsize',20);

hsurf8 = uicontrol('Style','pushbutton',...
    'String','Main Menu','Position',[80,130,150,50], ...
    'Callback','start2;jj=2');
hsurf9 = uicontrol('Style','pushbutton',...
    'String','Quit','Position',[80,60,150,50], ...
    'Callback','close all;clear all');