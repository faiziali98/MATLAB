clear
close all
clc

a=1000;
h = waitbar(0,'LOADING...');

for a1=1:a
    waitbar(a1/a,h);
end

close all

fig1=figure;

hold on
imsk = imread('Inscr.png');
imshow(imsk)

set(fig1, 'WindowButtondownFcn', 'a = get(gca, ''CurrentPoint'')')
a=zeros(2,3);
c=1;

while c
    x=a(1,1);
    y=a(1,2);
    if x>=95 && x<=195 && y>=175 && y<=210
        c=0;
    end
    if x>=40 && x<=170 && y>=210 && y<=260
        msgbox('First make the path of coaster such that you get all three coins than click PLAY')
        a(1,1)=0;
        a(1,2)=0;
    end
    pause(0.1)
end

close all

fig4=figure('position',[500,400,350,100]);

title('Enter Name')
axis off

hsurf9 = uicontrol('Style','edit',...
    'String','','Position',[50,30,120,50])
hsurf10 = uicontrol('Style','pushbutton',...
    'String','OK','Position',[200,30,90,50], ...
    'Callback','a = get(hsurf9,''string''); g = a;start2');
