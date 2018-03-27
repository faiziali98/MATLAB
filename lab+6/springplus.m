clear all
hold on

%% Initialization
axis equal
axis ([-60,70,-60,60])
m=0.5;
k=3;

r=10;

b=0.1;
vel=[10,10];
loc=[2.5,0];
h=rectangle('position',[loc,2,2],'facecolor','r','curvature',[1,1]);

s=(vel(1).^2+vel(2).^2).^(1/2) - r;


t=0.01;

while 1
    
    if  loc(2)>0
        yp=-vel(2);
    else
        yp=vel(2);
    end

    %% Difining Accelaration
    ax=(-k/m).*loc(1).*s-(b/m).*vel(1);
    ay=9.8-(k/m).*loc(2).*s-(b/m).*vel(2);
    %% Changing Velocity
    vel(1)=vel(1)+ax.*t;
    vel(2)=yp+ ay.*t;
    %% Changing Position
    loc=loc+vel;
    
    %% Making simulations 
   
    
        
    set(h,'position',[loc,5,5]);
    plot(loc(1),loc(2))
    pause(0.1);
end