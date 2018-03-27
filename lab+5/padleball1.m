clear all
%% Drawing the graphics
figure; axis equal; axis([0 100 0 100]);
pos=[40,0];

h1=rectangle('position', [0,0,100,100],'facecolor','b');
h2=rectangle('position', [pos,20,1],'facecolor','r');
%% Making the ball
curLoc = [10+(100-10)*rand , 10+(100-10)*rand];
curVel = [0.8, 0.9];
radius = 1.5;
hBall = rectangle('position', [curLoc, 2*radius, 2*radius], ...
                  'curvature', [1 1], 'facecolor', 'g');

%% get mouse input
 mouseLoc = [0 0];
set(gcf, 'WindowButtonMotionFcn', ...
    'mouseLoc = get(gca, ''CurrentPoint'');');

while 1
    
 
   
    %% Moving the paddle
    set(h2,'position', [mouseLoc(1),0,20,1]);
    
    %% Boucing the ball
     curLoc = curLoc - curVel;
    set(hBall, 'position', [curLoc, 2*radius, 2*radius]);
  
    a=mouseLoc(1)+20;
    
    if (curLoc(1) > (100 - 2 * radius)) || (curLoc(1) < 0)
        curVel(1)= -curVel(1);
    end;
    if (curLoc(2) > (100 - 2* radius))   
        curVel(2) = -curVel(2);   
    end;
    if (curLoc(1)+3)>mouseLoc(1) && curLoc(1)<a && curLoc(2)>0 && curLoc(2)<1
        curVel(2) = -curVel(2);
    end

    pause(0.001);
end;