if jj==2
    close all
    
    a=1000;
    h = waitbar(0,'LOADING...');
    
    for a1=1:a
        waitbar(a1/a,h);
    end
    %% Graphics
    close all
    fig2=figure;
    set(fig2,'menubar','none')
    iskl=imread('game3.png');
    imshow(iskl);
    hold
    
    title('Level 3')
    
    text (200,20,['Player Name : ',g])
    
    [r,s]=wavread('crowd.wav');
    [r1,s1]=wavread('vic.wav');
    [r2,s2]=wavread('cc.wav');
    [rd,sd]=wavread('mute.wav');
    land=audioplayer(r,s);
    victor=audioplayer(r1,s1);
    lost=audioplayer(r2,s2);
    gj=r;gy=s
    
    hsurf11 = uicontrol('Style','pushbutton',...
        'String','mute','Position',[600,450,40,30], ...
        'Callback','r=rd;s=sd;land=audioplayer(r,s)');
    hsurf13 = uicontrol('Style','pushbutton',...
        'String','sound','Position',[550,450,40,30], ...
        'Callback','r=gj;s=gy;land=audioplayer(r,s)');
    
    xx1=-32;
    y1=280;
    %% Train
    [ t,wd,ln,jjt,xt1,xt2,yt1,yt2,post1,post2 ] = train2( x1,y1 )
    d=zeros(1,4);
    r=7.5;
    %% Coins
    c1=[102,192];
    c2=[158,136];
    c3=[335,217];
    c4=[374,258];
    
    c=zeros(1,4);
    
    c(1)=rectangle('position',[102-r,192-r,15,15],'curvature',[1,1],'facecolor',rand(1,3));
    c(2)=rectangle('position',[158-r,136-r,15,15],'curvature',[1,1],'facecolor',rand(1,3));
    c(3)=rectangle('position',[335-r,217-r,15,15],'facecolor',rand(1,3),'curvature',[1,1]);
    c(4)=rectangle('position',[374-r,258-r,15,15],'facecolor',rand(1,3),'curvature',[1,1]);
    
    %% Making the path
    set(fig2, 'WindowButtondownFcn', 'a = get(gca, ''CurrentPoint'')');
    set(fig2, 'WindowButtonUpFcn', 'b = get(gca, ''CurrentPoint'')');
    set(fig2,'WindowButtonMotionFcn','ss = get(gca, ''CurrentPoint'')')
    a=zeros(2,3);
    b=zeros(2,3);
    ss=zeros(2,3);
    jk=line([0,0],[0,0],'color','k','LineWidth',5);
    l=1;
    k=1;
    sx=[];
    sy=[];
    nol=4;
    kj=0;
    
    while l
        if a(1,2)>=360 && a(1,2)<=408 && a(1,1)>=90 && a(1,1)<=259
            kj=1;
            a(1,1)=0;
            a(1,2)=0;
        end
        if kj
            if nol>0
                if a(1,1)>0 && b(1,1)>0
                    x=a(1,1);y=a(1,2);
                    v=b(1,1),u=b(1,2);
                    sx(k,1)=x;sx(k,2)=v;
                    sy(k,1)=y;sy(k,2)=u;
                    line([x,v],[y,u],'color','k','LineWidth',5);
                    a(1,1)=0;
                    k=k+1;
                    nol=nol-1;
                    kj=0;
                    
                elseif a(1,1)>0 && ss(1,1)>0
                    if ss(1,1)>a(1,1)
                        j1=a(1,1);j2=a(1,2);
                        j3=ss(1,1);j4=ss(1,2);
                        set(jk,'xData',[j1,j3],'yData',[j2,j4]);
                    else
                        j1=a(1,1);j2=a(1,2);
                        j3=a(1,1);j4=a(1,2);
                        set(jk,'xData',[j1,j3],'yData',[j2,j4]);
                    end
                else
                    b(1,1)=0;b(1,2)=0;
                end
            else
                fig3=figure('position',[500,300,300,300]);
                axis off
                text (-0.05,0.8,'Sorry Limit Reached!','fontsize',20);
                hsurf2 = uicontrol('Style','pushbutton',...
                    'String','  Continue ','Position',[80,130,150,50], ...
                    'Callback','a(1,1)=0;close(fig3)');
                hsurf3 = uicontrol('Style','pushbutton',...
                    'String','   Quit   ','Position',[80,60,150,50], ...
                    'Callback','close all;clear all');
                kj=0;
                a(1,1)=0;
            end
            
        end
        if a(1,2)>=361 && a(1,2)<=408 && a(1,1)>=275 && a(1,1)<=429
            clear all;
            close all;
        elseif a(1,2)>=357 && a(1,2)<=422 && a(1,1)>=501 && a(1,1)<=595
            l=0;
        end
        pause(0.1)
    end
    %% Running The Train
    th=atand((sy(1,2)-sy(1,1))/(sx(1,2)-sx(1,1)));
    
    x1=sx(1,1)+7*cosd(90-th);
    y1=sy(1,1)-7*sind(90-th);
    
    xf=[x1,x1,x1+jjt,x1+ln];
    yf=[y1,y1-wd,y1-wd,y1];
    set (t(4),'yData',yf,'xData',xf);
    rotate(t(4),[0,0,1],th,[x1,y1,0]);
    
    k=0:360;
    post1=[x1+10*cosd(th),y1+10*sind(th)];
    post2=[x1+55*cosd(th),y1+55*sind(th)];
    xt1=post1(1)+ 5.*cosd(k);yt1=post1(2)+5.*sind(k);
    xt2=post2(1)+ 5.*cosd(k);yt2=post2(2)+5.*sind(k);
    set(t(1),'xData',xt1,'yData',yt1)
    set(t(2),'xData',xt2,'yData',yt2)
    
    vi=7;
    q=1;
    lm=0;
    sh1=0;
    n=1;
    v1=vi.*sind(th);
    v2=vi.*cosd(th);
    gg1=0;
    gg2=0;
    
    while q
        
        for q2=n:size(sx,1)
            
            if x1+ln*cosd(th)>=sx(q2,2) && (y1+ln*sind(th)>=sy(q2,2)||(y1+ln*sind(th)<=sy(q2,2)))
                sh1=1;
                n=n+1;
                break;
            end
            
        end
        
        if th<0
            gg1=1;
        elseif th>0
            gg2=2;
        elseif th==0
            gg1=0;gg2=0;
        elseif  th<-75
            q=0;
        end
        
        if sh1
            th=atand((sy(q2+1,2)-sy(q2+1,1))/(sx(q2+1,2)-sx(q2+1,1)));
            x1=sx(q2+1,1)+7*cosd(90-th);
            y1=sy(q2+1,1)-7*sind(90-th);
            kb=sx(q2+1,1);lb=sx(q2+1,2);
            cb=sx(q2+1,1);jb=sx(q2+1,2);
            v1=vi.*sind(th);
            v2=vi.*cosd(th);
            xf=[x1,x1,x1+jjt,x1+ln];
            yf=[y1,y1-wd,y1-wd,y1];
            set (t(4),'yData',yf,'xData',xf);
            sh1=0;
        end
        
        if gg1
            vi=vi+0.05*sin(th);
            v1=vi.*sind(th);
            v2=vi.*cosd(th);
            %         if x1<=sx(q2+1,1) && (y1<=sy(q2+1,2)||(y1>=sy(q2+1,2)))
            %             q=0;
            %         end
        elseif gg2
            vi=vi+0.5*sind(th);
            v1=vi.*sind(th);
            v2=vi.*cosd(th);
        end
        
        x1=x1+v2;
        y1=y1+v1;
        
        xf=[x1,x1,x1+jjt,x1+ln];
        yf=[y1,y1-wd,y1-wd,y1];
        z=x1+ln*cosd(th);
        set (t(4),'yData',yf,'xData',xf);
        rotate(t(4),[0,0,1],th,[x1,y1,0]);
        
        post1=[x1+10*cosd(th),y1+10*sind(th)];
        post2=[x1+55*cosd(th),y1+55*sind(th)];
        xt1=post1(1)+ 5.*cosd(k);yt1=post1(2)+5.*sind(k);
        xt2=post2(1)+ 5.*cosd(k);yt2=post2(2)+5.*sind(k);
        set(t(1),'xData',xt1,'yData',yt1)
        set(t(2),'xData',xt2,'yData',yt2)
        
        pause(0.1)
        
        d(1)=sqrt(((x1+ln/2)-c1(1)+7.5)^2+((y1-wd/2)-c1(2)+7.5)^2);
        d(2)=sqrt(((x1+ln/2)-c2(1)+7.5)^2+((y1-wd/2)-c2(2)+7.5)^2);
        d(3)=sqrt(((x1+ln/2)-c3(1)+7.5)^2+((y1-wd/2)-c3(2)+7.5)^2);
        d(4)=sqrt(((x1+ln/2)-c4(1)+7.5)^2+((y1-wd/2)-c4(2)+7.5)^2);
        
        for s=1:4
            if d(s)<=22
                set(c(s),'visible','off');
                if d(s)== d(1)
                    c1=[0,0];
                elseif d(s)==d(2)
                    c2=[0,0];
                elseif d(s)==d(3)
                    c3=[0,0];
                elseif d(s)==d(4)
                    c4=[0,0];
                end
                lm=lm+1;
                d(s)=0;
            end
        end
        
        if z>=569
            q=0;
        end
        
    end
    
    play(victor);
    fig4=figure('position',[500,300,300,300]);
    axis off
    text (-0.1,0.8,['   You have got ',num2str(lm),' coins   ';'Do you want to play again?';'You have completed journey'],'fontsize',17);
    hsurf8 = uicontrol('Style','pushbutton',...
        'String','Restart','Position',[80,130,150,50], ...
        'Callback','start2');
    hsurf9 = uicontrol('Style','pushbutton',...
        'String','Quit','Position',[80,60,150,50], ...
        'Callback','close all;clear all');
    
else
    
    close all
    fig4=figure('position',[500,300,300,300]);
    axis off
    text (-0.1,0.8,['Please complete previous level first';'     Do you want to play again?     '],'fontsize',13);
    hsurf8 = uicontrol('Style','pushbutton',...
        'String','Restart','Position',[80,130,150,50], ...
        'Callback','start2');
    hsurf9 = uicontrol('Style','pushbutton',...
        'String','Quit','Position',[80,60,150,50], ...
        'Callback','close all;clear all');
    
end
