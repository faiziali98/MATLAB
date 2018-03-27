close all
clear all
clc

fig4=figure('position',[500,350,305,260]);
    
    title('Enter Time')
    axis off
    jj=0;
    hsurf1 = uicontrol('Style','edit',...
        'String','','Position',[40,70,120,50]);
    hsurf2 = uicontrol('Style','edit',...
        'String','','Position',[40,130,120,50]);
    hsurf3 = uicontrol('Style','edit',...
        'String','','Position',[40,190,120,50]);
    hsurf4 = uicontrol('Style','edit',...
        'String','','Position',[40,10,120,50]);
    hsurf5 = uicontrol('Style','pushbutton',...
        'String','SECONDS','Position',[195,70,90,50], ...
        'Callback','a = get(hsurf1,''string''); g3 = a');
    hsurf6 = uicontrol('Style','pushbutton',...
        'String','MINUTES','Position',[195,130,90,50], ...
        'Callback','b = get(hsurf2,''string''); g2 = b');
    hsurf7 = uicontrol('Style','pushbutton',...
        'String','HOURS','Position',[195,190,90,50], ...
        'Callback','c = get(hsurf3,''string''); g1 = c');
    hsurf8 = uicontrol('Style','pushbutton',...
        'String','MESSAGE','Position',[195,10,90,50], ...
        'Callback','d = get(hsurf4,''string''); g4 = d;time2');