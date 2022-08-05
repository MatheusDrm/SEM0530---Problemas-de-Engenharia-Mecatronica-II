% Prática 5 - Matheus Della Rocca Martins - Nusp: 12549731

% Dados fornecidos 
m = 1; %[kg]
r = 1.31; %[m]
c = 0.5; %[Nms/rad]
g = 9.81; %[m/s^2]
% Condições iniciais
theta0 = 0; 
thetaP0 = 15;
CI = [theta0; thetaP0];
% Definindo intervalo de tempo
ti = 0;
dt = 0.05;
tf = 25;
iTempo = [ti:dt:tf];
% Resolvendo EDO
[t, theta] = ode45('edo2', iTempo, CI);
% Determinando a tracao
T = m.*(r.*theta(:,2).^2 + g.*cos(theta(:,1)));
% Encontrando numero de voltas completas
numVoltas = (theta(501,1))./(2.*pi); %->501 é o último termo de theta1

%Plotando os gráficos solicitados
figure(1)
plot(t, theta(:,1), '-r', 'linewidth',1)
title (" Theta em função do tempo")
ylabel ("Theta(rad)") 
xlabel ("Tempo(s)")
axis square
grid on
figure(2)
plot(t, theta(:,2), '-b', 'linewidth',1)
title (" ThetaPonto em função do tempo")
ylabel ("ThetaP(rad/s)")
xlabel ("Tempo(s)")
axis square
grid on
figure(3)
plot(theta(:,1), theta(:,2), '-g', 'linewidth',1)
title (" ThetaPonto em função de theta")
ylabel ("TetaP(rad/s)")
xlabel ("Theta(rad)")
axis square
grid on

figure(4)
plot(t, theta(:,1), '-r', 'linewidth',1)
title ("Evoluções")
axis square
grid on
hold on
plot(t, theta(:,2), '-b', 'linewidth',1)
axis square
grid on
hold off
legend('Theta-tempo','ThetaPonto-tempo')

figure(5)
plot(t, T, '-b', 'linewidth',1)
title (" Tração em função do tempo")
ylabel ("Tração(N)") 
xlabel ("Tempo(s)")
axis square
grid on




