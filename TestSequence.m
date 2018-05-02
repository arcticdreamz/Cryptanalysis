clc;
clear all;
load("Q.mat");
load("pinit.mat");
symbols;
T = "A ba ah ab"
y = symb(randperm(length(symb)));
Tcrypte = encrypt(T,y)
[prob_post, best_x] = Metropolis(Tcrypte,pinit,Q);
T_chap = decrypt(Tcrypte,best_x)