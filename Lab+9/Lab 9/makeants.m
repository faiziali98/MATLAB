function [ ants,locs ] = makeants(n)

ants=zeros(n,3);
locs=zeros(n,2);

for i=1:n
    
    
    locs(i,1)=randi([15,95],1,1);
    locs(i,2)=randi([15,95],1,1);
    
    ants(i,1)=rectangle ('position',[locs(i,1),locs(i,2),2,2],'facecolor','k');
    ants(i,2)=rectangle ('position',[locs(i,1)+2,locs(i,2)+2,2,2],'facecolor',[0.4,0.4,0.4]);
    ants(i,3)=rectangle ('position',[locs(i,1)+4,locs(i,2)+4,2,2],'facecolor',[0.7,0.7,0.7]);
    g(i)=1
    
    
end
end