
figure; axis equal; axis([0 100 0 100]);
 
a = -1;
b = 1;
curLoc = [50,80];
curVel = [0,0];
radius = 2;
hBall = rectangle('position', [curLoc, 2*radius, 2*radius], ...
                  'curvature', [1 1], 'facecolor', [0.5 1 0.9]);

while 1
    curVel(1) = curVel(1) + [-0.1 + (0.1-(-0.1))*rand]; 
    curVel(2) = curVel(2) + [-0.1 + (0.1-(-0.1))*rand];    
    curLoc = curLoc + curVel;
    set(hBall, 'position', [curLoc, 2*radius, 2*radius]);
    
    if (curLoc(1) > (100 - 2 * radius)) || (curLoc(1) < 0)
        curVel(1) = -curVel(1);
    end;
    if (curLoc(2) > (100 - 2* radius)) || (curLoc(2) < 0)
        curVel(2) = -curVel(2);
    end;
    pause(0.01);
end;
