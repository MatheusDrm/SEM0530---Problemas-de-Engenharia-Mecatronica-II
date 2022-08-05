% Prática 4 - Matheus Della Rocca Martins

%Resolução EDO 1 ordem
ti = 0; %[s]
tf = 25; %[s]
dt = 0.1; %[s]


%Plot
n = [1:10]; %n variando de 1 a 10
figure (1) 
plot(n, u1,'b', 'linewidth',1)
hold on
plot(n,u2,'g', 'linewidth',1)
title (" Gráfico dos deslocamentos u(n) em seus respectivos nós(n)")
xlabel ("nó(n)")
ylabel ("u_n(m)")
legend('Caso_1 (u1)', 'Caso_2(u2)', 'location', 'northwest')
axis square
grid on
    


