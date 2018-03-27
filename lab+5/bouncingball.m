clear all

figure; axis equal; axis([10 200 10 200]);

curLoc = [10+(200-10)*rand , 10+(200-10)*rand];
curVel = [0.8, 0.9];
radius = 5;
hBall = rectangle('position', [curLoc, 2*radius, 2*radius], ...
                  'curvature', [1 1], 'facecolor', rand(1,3));

while 1
    
    

    curLoc = curLoc + curVel;
    set(hBall, 'position', [curLoc, 2*radius, 2*radius]);
    
    if (curLoc(1) > (200 - 2 * radius)) || (curLoc(1) < 10)
        curVel(1)= -curVel(1);
    end;
    if (curLoc(2) > (200 - 2* radius)) || (curLoc(2) < 10)
        curVel(2) = -curVel(2);
    end;
    pause(0.0001);
end;
