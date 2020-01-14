clc
clear all
close all
syms t;
x = t.*(heaviside(t) - heaviside(t-2));
T = 4;
q = fs(x,T,-10,10,0,2)