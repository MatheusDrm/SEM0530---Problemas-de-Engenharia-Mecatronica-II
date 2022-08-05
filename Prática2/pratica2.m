% Prática 2 - Matheus Della Rocca Martins

% Dados
r = 100; % [m]
Vi = 13.1; % [m/s]

% Análise da velocidade:
s = 0:0.01:20;
V = sqrt( 2 .* (4*s - (0.01 .* (power(s,3))/3)) + power(Vi,2));
disp("velocidade a 20 metros")
V(2001) % tempo 2001 corresponde a v = 20

% Análise da aceleração
at = (4 - 0.01 .* power(s,2)); % aceleração tangencial [m/s^2]
an = (power(V,2))./(r); % aceleração normal [m/s^2]
a = sqrt(power(at,2) + power(an,2)); % aceleração total [m/s^2]

% Análise do tempo 

t = 1./V;
% resolução da integral pelo método trapz
tempo_trapz = trapz(s,t) % resolvendo a integral de v*ds


% Plotando os gráficos

figure(1)
plot(s, V, 'r', 'linewidth',2)
title (" Velocidade em função do deslocamento(s)")
xlabel ("s(m)")
ylabel ("V(m/s)")
axis square
grid on

figure(2)
plot(s, a, 'g', 'linewidth',2)
axis([0 20 2.6 4.8])
title (" Aceleração em função do deslocamento(s)")
xlabel ("s(m)")
ylabel ("a(m/s^2)")
axis square
grid on











