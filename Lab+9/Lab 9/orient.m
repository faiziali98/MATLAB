function [orient1 orient2] = orient()
if rand <0.5
    if rand <0.3
        orient1 = [-2 -2];
        orient2 = [2 2];
    else
        orient1 = [-2 2];
        orient2 = [2 -2];
    end
else
    if rand <0.3
        orient1 = [-2 2];
        orient2 = [2 -2];

    else
        orient1 = [-2 -2];
        orient2 = [2 2];

    end
end
end
