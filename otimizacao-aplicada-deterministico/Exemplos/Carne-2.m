%Algoritmo Simplex

clc; clear all; warning off;

%problema da carne de porco e de vaca

options = optimset('LargeScale', 'off', 'Simplex', 'on');
f   = [14; 8]; %fun��o linear de custo, avalia��o, objetivo etc.
lb  = zeros(2,1); %Vetor de limites inferiores = a zero
A   =  [0.2 0.4]; %A e B satisfaz a igualdade Aeq * x = beq. Definir A = [] e b = [] se n�o existirem desigualdades.
%Ax = b
b   = [2.5]; %resumindo e concluindo, A � o que fica de um lado da desigualdade e B do outro.
Aeq =  ones(1,2); %matrix para restri��es de igualdade lineares
beq =  [10]; %vetor para restri��es de igualdade lineares
[x] = linprog(f,A,b,Aeq,beq,lb,[],[],options)
                            