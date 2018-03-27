function [h] = createSnake(m)

k=m(1)-40;
snakeX = m(1):-2:k;
snakeY = ones(1,21).*m(2) ;

h = plot(snakeX,snakeY, 'o', 'color', [0.5,1,0]);

end

