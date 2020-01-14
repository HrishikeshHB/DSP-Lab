clc 
clear all
close all
h = [1 2 3 1];
x = [1 2 1 -1];
y = conv5(x,h,-1,0)