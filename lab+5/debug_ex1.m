%% Step 1: House keeping
clear          % delete all variables from workspace
close all      % close any opened figure window
clc            % clean the command window
 
disp('House keeping done.');

%% Step 2: Setting up the graphics
figure;
hold on;
axis equal;

axis([-100 100 -100 100]);

%% Step 3: Initialization
curvature=1; 
h=rectangle('Position',[50 0 15 15],'facecolor','r','curvature',[curvature curvature]);

th = 0:2:359;
xCen=50*cosd(th); % defined outside loop to save computations
yCen=50*sind(th); % defined outside loop to save computations
i=1;

%% Step 4: Executing for loop

while i
    
    color(1)=(255*rand(1))/255;
    color(2)=(255*rand(1))/255;
    color(3)=(255*rand(1))/255;
    
    set(h,'Position',[xCen(i),yCen(i),30,30],'curvature',[curvature curvature],'FaceColor',color); 
    pause(0.01);
    
    i=i+1;
    if i>359
        i = 0;
    end
end;