clc
close all

hold on
axis equal
axis([0,1.7,0.5,2])
axis off
rectangle('position',[0,0.5,1.7,1.5],'facecolor','w');
set(gcf,'menubar','none')

a=00;g1=str2num(g1);
b=00;g2=str2num(g2);
c=00;g3=str2num(g3);

h=text(0.5,1.3,[num2str(a),':',num2str(b),':',num2str(c)],'fontsize',40);

k=1;

while k
    
    tic
    
    if c==60
        c=0+1;
        if b==60
            b=0-1;
            a=a+1;
        else
            b=b+1;
        end
    else
        c=c+1;
    end
    
    set(h,'string',[num2str(a),':',num2str(b),':',num2str(c)]);
    
    if a==g1 && b==g2 && c==g3
        break;
    end
    
    pause(1-toc)
end

title('Press Space')
set(h,'string',g4);

set(gcf, 'KeyPressFcn', 'a = get(gcf, ''CurrentCharacter'');');

a=0;

gg=1;
[rd,sd]=wavread('vic.wav');
land=audioplayer(rd,sd);

while 1
    
    play(land)
    pause(0.5)

    if double(a)
        break;
    end
    
end

close all
clear all