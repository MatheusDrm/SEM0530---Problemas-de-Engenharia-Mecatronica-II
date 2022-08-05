function res = edo2(t,theta)
    % Dados fornecidos 
    m = 1; %[kg]
    r = 1.31; %[m]
    c = 0.5; %[Nms/rad]
    g = 9.81; %[m/s^2]
    th = theta(1);
    dthdt = theta(2);
    dth2dt = -(c./m).*dthdt - (g./r).*sin(th);
    res = [dthdt; dth2dt];
    end
    