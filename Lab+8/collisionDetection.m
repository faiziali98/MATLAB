function [ headX,headY,snakeX,snakeY,collision ] = collisionDetection( snakeX,snakeY,headX,headY )

for i = 1:(length(snakeX)-1)
    if(headX == snakeX(i) && headY == snakeY(i))
        collision = 1;
    else
        collision = 0;
    end
    
end


end

