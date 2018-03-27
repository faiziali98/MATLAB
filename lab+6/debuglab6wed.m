%% Step 1: House keeping
clear          % delete all variables from workspace
close all      % close any opened figure window
clc            % clean the command window
 
disp('House keeping done.');
 

%% Step 2: Setting up the graphics

figure; axis equal;  
axis([0 100 0 100]); 
% axis off  

%% Step 3: Initialization
curLoc = 25 + round(45 * rand(1,2)); 
curVel = rand(1,2); 
radius = 2; 
limit = 50;
pos = 0;
limit2 = pos + 2*limit;
 

boundingBox=rectangle('position', [pos,pos, 2*limit, 2*limit], ... 
                  'curvature', [0 0], 'facecolor', [1 0 0]); 
              
hBall = rectangle('position', [curLoc, 2*radius, 2*radius], ... 
                  'curvature', [1 1], 'facecolor', 'y'); 
              
%% Step 4: Main body of the program
while 1 
    %update position and draw 
    curLoc = curLoc + curVel; 
    set(hBall, 'position', [curLoc, 2*radius, 2*radius]); 
     
    %handle collisions 
    if (curLoc(1) > (limit2 - radius)) || (curLoc(1) < pos) 
        curVel(1) = -curVel(1);
         set(hBall, 'facecolor', 'r');
         set(boundingBox, 'facecolor', 'y');
    end; 
    if (curLoc(2) > (limit2 - 2* radius)) || (curLoc(2) < pos) 
        curVel(2) = -curVel(2); 
        set(hBall, 'facecolor', 'y');
        set(boundingBox, 'facecolor', 'r');
    end; 
    pause(0.001); 
end;
