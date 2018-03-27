function [ snakeX,snakeY ] = increaseLength( distance,snakeX,snakeY,keyPressed )

if distance<2
    if keyPressed=='d'
        snakeX(end+1)=snakeX(end)+2;
        snakeY(end+1)=snakeY(end);
    elseif keyPressed=='a'
        snakeX(end+1)=snakeX(end)-2;
        snakeY(end+1)=snakeY(end);
    elseif keyPressed=='w'
        snakeY(end+1)=snakeY(end)+2;
        snakeX(end+1)=snakeX(end);
    elseif keyPressed=='s'
        snakeY(end+1)=snakeY(end)-21;
        snakeX(end+1)=snakeX(end);
    end
end


end

