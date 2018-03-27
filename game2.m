clc
clear all
close all

hold on
axis equal
axis([0,100,0,100])

axis off
rectangle('position',[0,0,100,100],'facecolor','w');
set(gcf,'menubar','none')

pos=[47,0];
h=zeros(1,1000);th=zeros(1,1000);
h(1)=rectangle('position',[pos,5,5],'curvature',[1,1],'facecolor',rand(1,3));
posb=pos;

set(gcf, 'WindowButtondownFcn', 'a = get(gca, ''CurrentPoint'')');
a=zeros(2,3);
jk=1;
n=1;
v=zeros(1000,2);k=zeros(1,1000);
record=0;missed=0;scoreb=0;

j=100;
h1=zeros(1,j);
lm=zeros(j,2);
rm=zeros(1,j);
vf=zeros(1,j);
pj=zeros(1,j);
score=0;
tries=50;
tic

for jj=1:j
    
    lm(jj,1)=-5000+(-5+5000).*rand;
    lm(jj,2)=40+(93-50).*rand;
    rm(jj)=8+(14-8).*rand;
    vf(jj)=2+(5-2).*rand;
    pj(jj)=1;
    
    h1(jj)=rectangle('position',[lm(jj,:),rm(jj),rm(jj)],'curvature',[1,1],'facecolor',rand(1,3));
    
end

while jk<60
    
    if a(1,1)
        
        th(n)=atand((pos(n,2)-a(1,2))/(pos(n,1)-a(1,1)));vi=8;
        v(n,1)=vi*cosd(th(n));v(n,2)=vi*sind(th(n));
        a(1,1)=0;
        k(n)=1;
        n=n+1;
        tries=tries-1;
        pos(n,1)=47;
        pos(n,2)=0;
        h(n)=rectangle('position',[pos(n,:),5,5],'curvature',[1,1],'facecolor',rand(1,3));
        
    end
    
    for kj=1:n
        
        if k(kj)
            if th(kj)>=0
                pos(kj,:)=pos(kj,:)+v(kj,:);
            elseif th(kj)<=0
                pos(kj,:)=pos(kj,:)-v(kj,:);
            end
            
            if pos(kj,1)>=100 || pos(kj,1)<=0 || pos(kj,2)>=100
                k(kj)=0;
                set(h(kj),'visible','off')
            end
            set(h(kj),'position',[pos(kj,:),5,5])
        end
    end
    
    for ss=1:j
        
        if pj(ss)
            lm(ss,1)=lm(ss,1)+vf(ss);
            set(h1(ss),'position',[lm(ss,:),rm(ss),rm(ss)]);
        end
        
        if lm(ss,1)>=100
            pj(ss)=0;
            lm(ss,1)=-200;
            set(h1(ss),'visible','off')
            record=record+1;
            missed=missed+1;
            score=score-5;
        end
        
    end
    
    for z=1:n
        
        for x=1:j
            d=sqrt(((lm(x,1)+rm(x)/2)-(pos(z,1)+2.5))^2+((lm(x,2)+rm(x)/2)-(pos(z,2)+2.5))^2);
            if d<=(rm(x)/2)
                pj(x)=0;
                lm(x,1)=-200;
                record=record+1;
                score=score+10;scoreb=scoreb+10;
                tries=tries+1;
                set(h1(x),'visible','off')
            end
        end
        
    end
    
    kl=toc;
    if kl>=1
        jk=jk+1;
        tic
    end
    
    if tries==0
        break;
    end
    title(['Missed = ',num2str(missed),'     Time = ',num2str(jk),'      Score = ',num2str(score),'    Tries = ',num2str(tries)])
    pause(0.05)
end

close all

figure;

hold
axis equal
axis([0,100,0,100])

axis off
rectangle('position',[0,0,100,100],'facecolor','w');
set(gcf,'menubar','none')

t1=60-jk;
s1=t1*3;
score=score-s1;

perc=(score/scoreb)*100;

if perc>=90
    sd='Fantastic';
elseif perc>=80 && perc<90
    sd='Great';
elseif perc>=70 && perc<80
    sd='Good';
elseif perc>=60 && perc<70
    sd='Average';
elseif perc>=50 && perc<60
    sd='Do Better';
elseif perc<50
    sd='You failed';
end

text(0.5,95,'          Game Over','fontsize',25);
text(0.5,80,['       Total Balls : ',num2str(record)],'fontsize',25,'color',rand(1,3));
text(0.5,65,['           Missed : ',num2str(missed)],'fontsize',25,'color',rand(1,3));
text(0.5,50,['             Hits : ',num2str(record-missed)],'fontsize',25,'color',rand(1,3));
text(0.5,35,['            Time : ',num2str(jk)],'fontsize',25,'color',rand(1,3));
text(0.5,20,['           Score : ',num2str(score)],'fontsize',25,'color',rand(1,3));
text(0.5,5,['   Remarks : ',sd],'fontsize',25,'color',rand(1,3));