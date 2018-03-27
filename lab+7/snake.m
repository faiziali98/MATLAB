clear all
clc

axis equal
axis([0,100,0,100])
hold on

snakex=44:2:60;
snakey=[30,30,30,30,30,30,30,30,30];

h=plot(snakex,snakey,'o','color','g');
m1=zeros(1,10);
m=zeros(1,10);
keyPressed='d';
set(gcf, 'KeyPressFcn', 'keyPressed = get(gcf, ''CurrentCharacter'')');

xf=randi([1,100],1,1);
yf=randi([1,100],1,1);

hf=rectangle('position',[xf,yf,5,5],'facecolor','r','curvature',[1,1]);
score=0;

while 1
    if keyPressed=='d'
        for i=1:9
            m(i)=snakex(i);
            m1(i)=snakey(i);
        end
        m(end)=snakex(end)+2;
        m1(end)=snakey(end);
        for k=1:9
            snakey(k)=m1(k+1);
            snakex(k)=m(k+1);
        end
        
        
    end
    
    if keyPressed=='w'
        for i=1:9
            m(i)=snakex(i);
            m1(i)=snakey(i);
        end
        m(end)=snakex(end);
        m1(end)=snakey(end)+2;
        for k=1:9
            snakey(k)=m1(k+1);
            snakex(k)=m(k+1);
        end
       
    end
    
    if keyPressed=='a'
        for i=1:9
            m(i)=snakex(i);
            m1(i)=snakey(i);
        end
        m(end)=snakex(end)-2;
        m1(end)=snakey(end);
        for k=1:9
            snakey(k)=m1(k+1);
            snakex(k)=m(k+1);
        end
       
    end
    
    if keyPressed=='s'
        for i=1:9
            m(i)=snakex(i);
            m1(i)=snakey(i);
        end
        m(end)=snakex(end);
        m1(end)=snakey(end)-2;
        for k=1:9
            snakey(k)=m1(k+1);
            snakex(k)=m(k+1);
        end
        
    
    end

    set(h,'yData',snakey,'xData',snakex)
    pause(0.1)
    
    d=sqrt(((xf+2.5)-snakex(end)).^2 + ((yf+2.5)-snakey(end)).^2);
    if d<2.5
        xf=randi([1,100],1,1);
        yf=randi([1,100],1,1);
        set(hf,'position',[xf,yf,5,5])
        score=score+10;
        
    end
    
    if snakex(end)==100
        snakex(end)=0;
    elseif snakex(end)==0
        snakex(end)=100;
    end
    if snakey(end)==100
        snakey(end)=0;
    elseif snakey(end)==0
        snakey(end)=100;
    end
    
    title (['score = ',num2str(score)])
    
    if (snakex(end)== snakex(1)&&snakey(end)== snakey(1))||(snakex(end)== snakex(2)&&snakey(end)== snakey(2))||(snakex(end)== snakex(3)&&snakey(end)== snakey(3))||(snakex(end)== snakex(4)&&snakey(end)== snakey(4))||(snakex(end)== snakex(5)&&snakey(end)== snakey(5))||(snakex(end)== snakex(6)&&snakey(end)== snakey(6))||(snakex(end)== snakex(7)&&snakey(end)== snakey(7))||(snakex(end)== snakex(8)&&snakey(end)== snakey(8))
        break
    end
end

msgbox(['Your score = ',num2str(score)],'Game Over' );



