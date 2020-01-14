clc 
clear all 
close all
x = linspace(-1,1,60);
p=[4 0 -3 0];
q=[2 0 -1 0]; 
w = polyval(p,x);
roots(p)
roots(q)

