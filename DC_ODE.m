%FUNCION%
function dx=DC_ODE(t,x)

%PARAMETROS %

%RESISTENCIA%
R=2;
%CONSTANTE TORQUE%
Kt=0.01;
%AMORTIGUADOR%
b=0.0012;
%INDUCTANCIA%
L=0.023;
%CONSTANTE VOLTAJE%
Ke=0.01; 
%INERCIA%
J=0.001;
%VOLTAJE%
V=5; 

%MATRIZ%
dx=zeros(3,1);

%ESPACIOS DE ESTADOS%
dx(1)=(1/L)*(-Ke*x(3)-R*x(1)+V);
dx(2)=x(3);
dx(3)=(1/J)*(Kt*x(1)-b*x(3));