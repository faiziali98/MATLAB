function [ move,th,vel ] = returnHome( locs,xf,yf,k,move,th,vel)

v=2;
d=sqrt(((locs(k,1)-(xf+12.5)).^2)+((locs(k,2)-(yf+12.5)).^2));

if d<12.5
    
    th(k)=atand(locs(k,2)/locs(k,1));
    move(1,k)=1;
    vel(k,1)=v.*cosd(th(k));
    vel(k,2)=v.*sind(th(k));
    
end
    
end

