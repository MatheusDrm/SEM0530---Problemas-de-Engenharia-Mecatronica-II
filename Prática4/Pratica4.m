% Prática 4 - Matheus Della Rocca Martins

%Resolução EDO 1 ordem
ti = 0; %[s]
tf = 50; %[s]
dt = 0.1; %[s]
[t,teta] = ode45(@(t,teta) tetaP(t,teta),(ti:dt:tf),(0));    %t -> tempo, teta -> ângulo de giro
%Obter tempo para 3 voltas completas -> 3 voltas -> 3*(2pi) -> 6*pi
[sub, j] = min(abs(teta - 6*pi));
tempo3Voltas = t(j)

% Obter variação de r aplicando a eq encontrada teoricamente
r = 600 -400.*cos(teta);
r = r/1000; % em metro
% Obter os valores para a velocidade
v = (655 - 6.55 .*t); %velocidade linear [mm/s]
% Obter dteta/dt
tetaPonto = sqrt((v)./((400.*sin(teta)).^2 + (600 - 400.*cos(teta)).^2));
% Obter dr/dt
rPonto = 400.*sin(teta).*tetaPonto;

%Plotando gráficos
tetaPonto = tetaP(t,teta);

figure(1)
subplot(2,1,1)
plot(t, teta, 'r', 'linewidth',1)
title (" Teta em função do tempo")
ylabel ("teta(rad)") %->mudar pra grau
xlabel ("tempo(s)")
axis square
grid on
subplot(2,1,2)
plot(t, tetaPonto, 'g', 'linewidth',1)
title (" TetaPonto em função do tempo")
ylabel ("TetaP(rad/s)") %->mudar pra grau
xlabel ("tempo(s)")
axis square
grid on

figure(2)
subplot(2,1,1)
plot(t, r, 'r', 'linewidth',1)
title (" r em função do tempo")
ylabel ("r(m)") 
xlabel ("tempo(s)")
axis square
grid on
subplot(2,1,2)
plot(t, rPonto/1000, 'b', 'linewidth',1)
title (" rPonto em função do tempo")
ylabel ("rPonto(m/s)") 
xlabel ("tempo(s)")
axis square
grid on

figure (3)
plot(teta, r, '-b', 'linewidth',1)
title (" r em função de teta")
ylabel ("r(m)") 
xlabel ("teta(rad)")
axis square
grid on

figure (4)
plot(t, v/1000, 'g', 'linewidth',1)
title (" Velocidade em função do tempo")
ylabel ("v(m/s)") 
xlabel ("tempo(s)")
axis square
grid on





