clear all
close all
clc

a=1000;
h = waitbar(0,'LOADING...');

for a1=1:a
    waitbar(a1/a,h);
end

close all

fig1=figure;
set(fig1,'menubar','none')
hold on
imsk = imread('Inscr.png');
imshow(imsk)

[rd,sd]=wavread('mute.wav');
[r,s]=wavread('DONEL2.wav');
land=audioplayer(r,s);
gj=r;
gy=s;

pngg=0;
hsurf11 = uicontrol('Style','pushbutton',...
    'String','exit','Position',[610,380,40,30], ...
    'Callback','close all;c=0;g1=0;');
hsurf12 = uicontrol('Style','pushbutton',...
    'String','mute','Position',[510,380,40,30], ...
    'Callback','r=rd;s=sd;land=audioplayer(r,s)');
hsurf13 = uicontrol('Style','pushbutton',...
    'String','sound','Position',[560,380,40,30], ...
    'Callback','r=gj;s=gy;land=audioplayer(r,s)');

text (110,410,'Producer : Faizan Safdar Ali','fontsize',20);

set(fig1, 'WindowButtondownFcn', 'a = get(gca, ''CurrentPoint'')')
a=zeros(2,3);c=1;



while c
    x=a(1,1);
    y=a(1,2);
    if x>=95 && x<=195 && y>=175 && y<=210
        c=0;
        g1=1;
        pngg=1;
    end
    if x>=40 && x<=170 && y>=210 && y<=260
        msgbox('First make the path of coaster such that you get all three coins than click PLAY. Make lines carefully because you are only allowed to make 4 of them.You have to unlock levels. Bonus level is made for you to make unlocking levels easy.')
        a(1,1)=0;
        a(1,2)=0;
    end
    play(land)
    pause(0.1)
end
if pngg
    clear all
    g1=1;
else
    clear all
    g1=0;
end

if g1
    close all
    
    fig4=figure('position',[500,400,350,100]);
    
    title('Enter Name')
    axis off
    jj=0;
    hsurf9 = uicontrol('Style','edit',...
        'String','','Position',[50,30,120,50]);
    hsurf10 = uicontrol('Style','pushbutton',...
        'String','OK','Position',[200,30,90,50], ...
        'Callback','a = get(hsurf9,''string''); g = a;start2');
end