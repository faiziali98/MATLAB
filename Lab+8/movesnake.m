function [snake,snakeX,snakeY,dir] = movesnake(snakeX,snakeY,keyPressed,snake,dir)

if ( keyPressed == 'd')
    if (dir ~= [-1 0])
        dir = [1 0];
    end
elseif (keyPressed =='w')
    if (dir ~= [0 -1])
        dir = [0 1];
    end
elseif (keyPressed =='a')
    if (dir ~= [1 0])
        dir = [-1 0];
    end
elseif (keyPressed =='s')
    if (dir ~= [0 1])
        dir = [0 -1];
    end
end
headY = snakeY(length(snakeY));
headX = snakeX(length(snakeX));

snakeX = [snakeX(2:length(snakeX)), snakeX(length(snakeX)) + dir(1)*2];
snakeY = [snakeY(2:length(snakeY)), snakeY(length(snakeY)) + dir(2)*2];

if snakeX(end)==100
    snakeX(end) = 0;
elseif snakeX(end)==0
    snakeX(length(snakeX)) = 100;
elseif snakeY(end)==100
    snakeY(end) = 0;
elseif snakeY(end)==0
    snakeY(length(snakeY)) = 100;
end


set(snake, 'XDATA', snakeX, 'YDATA', snakeY);
end

