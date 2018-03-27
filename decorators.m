function str=decorators(str) 
str = tildaDecorator(str); 
str = asterixDecorator(arrowDecorator(str)); 
str = arrowDecorator(asterixDecorator(str)); 
 
disp(str); 
end
