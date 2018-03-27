Cleanup


createFigureAndAxes

loc=[50,50];

snake=createSnake2(loc);

k=loc(1)-40;
snakeX = k:2:loc(1);
snakeY = ones(1,21).*loc(2) ;

dir = [1,0];
keyPressed = 'd';
set(gcf, 'KeyPressFcn', 'keyPressed = get(gcf, ''CurrentCharacter'')');
foodX = randi(100);
foodY = randi(100);
foodRad = 2;
foodRect = rectangle('position', [foodX,foodY, foodRad*2, foodRad*2],'Curvature', [1,1], 'facecolor', 'red');
foodEaten = 0;
score = 0;
collision = 0;
sTitle = title('score = 0');
while(~collision)
    if(~ishandle(f))
        break;
    end
    
    [snake,snakeX,snakeY,dir]=movesnake(snakeX,snakeY,keyPressed,snake,dir);
    
    headY = snakeY(length(snakeY));
    headX = snakeX(length(snakeX));
    
   [ foodX,foodY,foodEaten,sTitle,foodRect,score,distance ] = foodAndScoreKeeping(headX,headY,foodX,foodY,score,sTitle,foodRect);
   
%    [ headX,headY,snakeX,snakeY,collision ] = collisionDetection( snakeX,snakeY,headX,headY );

    for i = 1:(length(snakeX)-1)
        if(headX == snakeX(i) && headY == snakeY(i))
            collision = 1;
        end
    end
    
    [ snakeX,snakeY ] = increaseLength( distance,snakeX,snakeY,keyPressed );
%     if distance<2
%         if keyPressed=='d'
%             snakeX(end+1)=snakeX(end)+2;
%             snakeY(end+1)=snakeY(end);
%         elseif keyPressed=='a'
%             snakeX(end+1)=snakeX(end)-2;
%             snakeY(end+1)=snakeY(end);
%         elseif keyPressed=='w'
%             snakeY(end+1)=snakeY(end)+2;
%             snakeX(end+1)=snakeX(end);
%         elseif keyPressed=='s'
%             snakeY(end+1)=snakeY(end)-21;
%             snakeX(end+1)=snakeX(end);
%         end
%     end
    pause(0.1)
end
if(collision)
    msgbox(['Score = ' num2str(score)] ,'You Lost');
end

