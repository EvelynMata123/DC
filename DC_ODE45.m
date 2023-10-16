%Función que resuelve el sistema%
[t,x]=ode45(@DC_ODE, [0 10], [0 0 0])

%Figure 1
figure(1)
plot(t,x(:,3), '');
grid on
title("ODE45");
xlabel("Tiempo");
ylabel("Radianes");