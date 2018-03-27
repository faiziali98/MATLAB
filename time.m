clc
clear all


hold on
axis equal
axis([0,1.7,0.5,2])
axis off
rectangle('position',[0,0.5,1.7,1.5],'facecolor','w');
set(gcf,'menubar','none')


a=00;
b=00;
c=03;

h=text(0.5,1.3,[num2str(a),':',num2str(b),':',num2str(c)],'fontsize',40);

k=1;

while k
    
    tic
    
    if a==0 && b==0 && c==0
        break;
    end
    
    
    if c==0
        c=60-1;
        if b==0
            b=60-1;
            a=a-1;
        else
            b=b-1;
        end
    else
        c=c-1;
    end
    
    
    set(h,'string',[num2str(a),':',num2str(b),':',num2str(c)]);
    
    pause(1-toc)
end

% rectangle('position',[0,0.5,1.7,2],'facecolor','y')
set(h,'string','HAPPY NEW YEAR','fontsize',20,'position',[0.3,1.3]);

j=500;
h1=zeros(1,j);h2=zeros(1,j);
lm=zeros(1,j);lm1=zeros(1,j);
km=zeros(1,j);km1=zeros(1,j);
rm=zeros(1,j);

for jj=1:j
    
    lm(jj)=-0.05+(1.65+0.05).*rand(1);lm1(jj)=lm(jj)+0.05;rm(jj)=0.15+(0.3-0.15).*rand(1);
    km(jj)=-1.5+(0+1.5).*rand(1);km1(jj)=km(jj) + rm(jj)/2 - 0.5; 
    
    h2(jj)=line([lm1(jj),lm1(jj)],[km(jj)+rm(jj)/2,km1(jj)],'color','k');
    h1(jj)=rectangle('position',[lm(jj),km(jj),0.1,rm(jj)],'curvature',[1,1],'facecolor',rand(1,3));
    
end

gg=1;
[rd,sd]=wavread('vic.wav');
land=audioplayer(rd,sd);

while gg
    
    for ss=1:j
        
        lm(ss)=lm(ss);
        km(ss)=km(ss)+(0.03+(0.05-0.03).*rand(1));km1(ss)=km1(ss)+(0.03+(0.05-0.03).*rand(1));
%         (0.03+(0.05-0.03).*rand(1))
        set(h1(ss),'position',[lm(ss),km(ss),0.12,rm(ss)]);
        set(h2(ss),'yData',[km(ss)+rm(ss)/2,km1(ss)]);
        
    end
    
    if max(km)>= 2
        break;
    end
    
    play(land)
    pause(0.1)
    
end

 set(h,'string','HAPPY NEW YEAR','fontsize',20,'position',[0.3,1.3]);
    