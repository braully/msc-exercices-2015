%format long
function Problema3Ex1
    clear all; clc; warning off;
    AlgoritmoGenetico(@Problema3Ex1Otimizacao, 2)
end

function [fval] = Problema3Ex1Otimizacao(X)
    x0 = X;
    t0 = 0;
    tf = 30;
    dt = 0.01;
    tpo = t0:dt:tf;
    [t,x] = ode45(@exemplo31,tpo,x0);
    x1 = x(:,1);
    x2 = x(:,2);

    aval1 = (max(x1) - min(x1))*100;
    aval2 = (max(x2) - min(x2))*100;
    fval = aval1 + aval2;
end

%função a ser otimizada
function xdot = exemplo31(t,x) %Função
    xdot = zeros(size(x,1),1);
    g = 9.8;
    L = 0.5;
    xdot(1) = x(2);
    xdot(2) = -(g/L)*sin(x(1));
end