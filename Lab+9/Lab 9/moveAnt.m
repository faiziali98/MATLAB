function [ants,locs,k] = moveAnt(ants,locs,i,move,vel);
k=0;
[orient1 orient2] = orient();
if move(i)==0
    gf=randi(2,1);
    if gf==1
        locs(i,1)=locs(i,1)+orient1(1);
        locs(i,2)=locs(i,2)+orient2(2);
        
        set(ants(i,1),'position',[locs(i,1)+orient1(1) locs(i,2)+orient1(2) , 2, 2])
        set(ants(i,2),'position',[locs(i,1),locs(i,2), 2 2])
        set(ants(i,3),'position',[locs(i,1)+orient2(1) locs(i,2)+orient2(2) 2 2])
    elseif gf==2
        locs(i,1)=locs(i,1)-orient1(1);
        locs(i,2)=locs(i,2)-orient2(2);
        
        set(ants(i,1),'position',[locs(i,1)-orient1(1) locs(i,2)-orient1(2) , 2, 2])
        set(ants(i,2),'position',[locs(i,1),locs(i,2), 2 2])
        set(ants(i,3),'position',[locs(i,1)-orient2(1) locs(i,2)-orient2(2) 2 2])
    end
elseif move(i)==1
    
    locs(i,1)=locs(i,1)-vel(i,1);
    locs(i,2)=locs(i,2)-vel(i,2);
    set(ants(i,1),'position',[locs(i,1),locs(i,2), 2, 2])
    set(ants(i,2),'position',[locs(i,1)+2 locs(i,2)+2 2 2])
    set(ants(i,3),'position',[locs(i,1)+4 locs(i,2)+4 2 2])
    k=k+1;
    
end

end

