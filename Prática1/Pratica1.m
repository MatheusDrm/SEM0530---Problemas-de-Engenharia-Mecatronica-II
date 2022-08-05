% Plotando gráfico da equação de equilíbrio estático
i = 0:0.01:0.5;
figure(1)
plot (i, apll(i));
xlabel ("deslocamento u(m)");
ylabel ("f(u)");
title (" Gráfico da eq. de equilíbrio estático");
axis square
grid on

% Achando valores de u que zeram a eq de equilíbrio

z1 = fzero ( 'apll' , 0.10 )
z2 = fzero ( 'apll' , 0.40)

i = 0:0.01:0.5;
figure (2)
plot (i, kef(i), 'g')
xlabel ("u(m)")
ylabel ("Kef(N/m)")
title (" Rigidez Efetiva (Kef) dado deslocamento (u)")
axis square
grid on

%Aplicando valores de zero da função na eq da rigidez 
k1 =  kef(z1)
k2 = kef(z2)