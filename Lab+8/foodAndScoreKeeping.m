function [ foodX,foodY,foodEaten,sTitle,foodRect,score,distance ] = foodAndScoreKeeping(headX,headY,foodX,foodY,score,sTitle,foodRect)

foodRad = 2;
foodEaten=0;
distance = norm([headX-(foodX+foodRad), headY - (foodY+foodRad)]);
    if(distance < 2)
        foodEaten = 1;
    end
    if(foodEaten)
        score = score + 10;
        set(sTitle,'string',['score = ' num2str(score)]);
        foodX = randi(100);
        foodY = randi(100);
        set(foodRect,'Position', [foodX-foodRad, foodY-foodRad,foodRad*2,foodRad*2]);
        foodEaten = 0;
    end
        


end

