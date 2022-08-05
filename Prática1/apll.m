function f = apll(u)
    % Dados fornecidos pelo problema
    L = 0.5; %(m)
    d = 0.2; %(m)
    h = sqrt ( power (L, 2) - power (d, 2)); %(m)
    k = 10000; %(N/m)
    g = 9.81; % (m/s^2)
    m = 211; %(Kg)

    %Eq. obtida:
    f = (2 .* k .* (L - sqrt(power(d,2) + power ((h-u), 2))) .* ((h-u))./(sqrt(power(d,2) + power ((h-u), 2)))) - m .* g;
end