clc
clear
clear all

xmax=100;
ymax=100;

[xf,yf]=graphics(xmax,ymax);
a=1;
n=10;

[ants,locs]=makeants(n);
move=zeros(1,n);
th=zeros(1,n);
vel=zeros(n,2);
l=zeros(n,2);
gm=zeros(n*2,2);

while a
    
    for i=1:n
        if move(i)==1
            l(i,1)=locs(i,1);
            l(i,2)=locs(i,2);
        end
        [ants,locs,k] = moveAnt(ants,locs,i,move,vel);
        if move(i)==1
            plot([locs(i,1),l(i,1)],[locs(i,2),l(i,2)],'.')
            gm(k,1)=locs(i,1);
            gm(k,2)=locs(i,2);
        end
    end
    
    for k=1:n
        [move,th,vel] = returnHome(locs,xf,yf,k,move,th,vel);
    end
    
    pause(0.05)
    
end


