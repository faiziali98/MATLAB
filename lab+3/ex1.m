clc;
close all;
clear all;

axis([0 100 0 100]);
axis equal; 
hold on
rectangle('Position', [20 40 60 30 ], 'Curvature', [0.2, 0.2], 'FaceColor', 'r');
hold on;

rectangle('Position', [20 40 60 30], 'Curvature', [0.4, 0.4], 'FaceColor', 'b');
rectangle('Position', [20 40 60 30], 'Curvature', [0.6, 0.6], 'FaceColor', 'y');
rectangle('Position', [20 40 60 30], 'Curvature', [0.8, 0.8], 'FaceColor', 'm');
rectangle('Position', [20 40 60 30], 'Curvature', [1, 1], 'FaceColor', 'g');

