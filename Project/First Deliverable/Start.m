clear
close all
clc

fig1=figure;
hold on
imsk = imread('Inscr.png');
imshow(imsk)
% rectangle('position',[40,210,130,50],'facecolor','k')
set(fig1, 'WindowButtondownFcn', 'a = get(gca, ''CurrentPoint'')')
% waitforbuttonpress;
a=zeros(2,3);
c=1;

while c
    x=a(1,1);
    y=a(1,2);
    % draw_lines
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
fig=figure('position',[500,300,300,300]);
hsurf = uicontrol('Style','pushbutton',...
    'String','level 1','Position',[80,200,150,50], ...
    'Callback',{@level_1});
hsurf2 = uicontrol('Style','pushbutton',...
    'String','level 2','Position',[80,130,150,50], ...
    'Callback',{@level_2});
hsurf3 = uicontrol('Style','pushbutton',...
    'String','level 3','Position',[80,60,150,50], ...
    'Callback',{@level_3});



