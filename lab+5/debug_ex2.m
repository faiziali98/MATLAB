%% Step 1: House keeping
clear          % delete variables from workspace
close all      % close any opened figure windows
clc            % clean the command windows
 
disp('House keeping done.');
 
%% Step 2: Setting up the graphics
figure;
hold on;
axis equal;

axis off;
axis([0 10 0 10]) 
%% Step 3: Initialization
strvar = ['I' , ' ' , ' ']
valid = ['can do' ; 'not do'];
questiontype = ['Debugging Questions' ; 'Exercise  Questions'];

disp('Initialization done.');
disp('Entering the for loop in the main body of the code.'); 
placements = [2 9]; 
%% Step 4: Executing for loop
for i = 1:9
    if i == placements(1)
        strvar = [strvar(1:i), valid(1,:)];
    end
    if i ==placements(2)
        strvar = [strvar(1,:),' ', questiontype(1,:)];
    end    
end
text(0,5,strvar,'fontsize',20,'color','b');
disp('All done! good work with debugging');
