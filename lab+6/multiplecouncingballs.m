close all
figure;
hold on;
axis equal

% dimesions
H = 100; % meters
W = 100; % meters
r =1;    % meters
axis([0 W 0 H]);


axis equal
hold on
axis([0,100,0,100])

rec=zeros(1,1000);
x=zeros(1,10000);
y=zeros(1,10000);



dx = zeros(1,10000);
dy = zeros(1,10000);
for l=1:10
      
  x(l)=randi(100);
  y(l)=randi(100);
  dx(l) = randi(100);
  dy(l) = randi(100);
 
  rec(l) = rectangle('Position',[x(l)-r,y(l)-r, 2*r,2*r], 'Curvature',[1 1], 'FaceColor',rand(1,3));
  

end
% start a loop for fifty seconds
tic
dt = 0.05 ;
for rept = 1:dt:50
    

% ************************************
% This part of the code is for single ball only and need to be modified for
% multiple balls
% ************************************
    for i=1:10
       
        
    % 	change the x and y positions by adding velocity to it
    x(i) = x(i) + dx(i)*dt;
    y(i) = y(i) + dy(i)*dt;
    
    % 	check to see if the x is below 0
    if x(i)-r < 0
        x(i) = -(x(i)-r) + r;
        dx(i) = -dx(i);
    end
    
    % 	check to see if x is above 20
    if x(i)+r > W
        x(i) = W - (x(i)+r - W) - r;        
        dx(i) = -dx(i);
    end
    
    % 	check to see if the y is below 0
    if y(i)-r < 0    
        y(i) = -(y(i)-r) + r;    
        dy(i) = -dy(i);
    end
    
    % 	check to see if y is above H
    if y(i)+r > H
        y(i) = H - (y(i)+r - H) - r;
        dy(i) = -dy(i);
    end
    
    set(rec(i) ,'Position',[x(i)-r,y(i)-r, 2*r,2*r]);
    end
% ************************************    
    pause(rept-toc)
    %plot(x,y) % uncomment this line to see the track traced by the ball
end