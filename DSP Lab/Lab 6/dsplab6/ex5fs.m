clc
clear all
close all
syms t;
x = (t).*(heaviside(t) - heaviside(t-pi)) + pi.*(heaviside(t-pi) - heaviside(t-2*pi));
T = 2*pi;
q = fs(x,T,-10,10,0,2*pi)