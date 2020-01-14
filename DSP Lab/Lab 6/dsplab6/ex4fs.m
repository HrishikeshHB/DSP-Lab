clc
clear all
close all
syms t;
x = (heaviside(t) - heaviside(t-1))-(heaviside(t-1) - heaviside(t-2));
T = 2;
q = fs(x,T,-10,10,0,2)