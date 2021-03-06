% force-activation
clear;clc;
% parameters
U = 0:0.01:1; % normalized activetion level
angle_pennation = 15; % pennation angle 10 - 20
Fmax = 3400; % maximal force in CE

l_ratio1 = 0.8; 
V_ratio = 0.8;

Fl = exp(-0.5*((l_ratio1-1.05)/0.19).^2);
Fv = 0.1433./(0.1074+exp(-1.409*sinh(3.2*V_ratio+1.6)));

Fce = U*Fl.*Fv;
Fpee = exp(10*(l_ratio1-1))/exp(5);
F = Fmax*(Fce+Fpee)*cos(2*pi/360*angle_pennation); % N

plot(U,F)
xlabel('Activation level');ylabel('Force(N)');
title('Force-activation level curve')


% force velocity
% clear;clc;
% U = [0.25 0.5 0.75 1]; % normalized activetion level
% angle_pennation = 15; % pennation angle 10 - 20
% Fmax = 3400;
% l_ratio1 = 0.8; % lm/lom 
% V_ratio = 0:0.01:1; % Vce/Vmax
% Fl = exp(-0.5*((l_ratio1-1.05)/0.19).^2);
% Fv = 0.1433./(0.1074+exp(-1.409*sinh(3.2*V_ratio+1.6)));
% figure(1);
% for i=1:4
%     Fce = U(i)*Fl*Fv;
%     Fpee = exp(10*(l_ratio1-1))/exp(5);
%     F = Fmax*(Fce+Fpee)*cos(2*pi/360*angle_pennation); % N
%     plot(V_ratio,F);
%     hold on;
%     legend('U=0.25','U=0.5','U=0.75','U=1')
% end 
% xlabel('Vce/Vmax');ylabel('Force(N)');
% title('Force - velocity relationship')

% % force-length 
% clear;clc;
% U = [0.25 0.5 0.75 1]; % normalized activetion level
% angle_pennation = 20; % pennation angle 10 - 20
% Fmax = 3400;
% l_ratio1 = 0:0.01:1.3; % lm/lom
% V_ratio = 0.5; % Vce/Vmax
% Fl = exp(-0.5*((l_ratio1-1.05)/0.19).^2);
% Fv = 0.1433./(0.1074+exp(-1.409*sinh(3.2*V_ratio+1.6)));
% figure(2);
% for i=1:4
%     Fce = U(i)*Fl*Fv;
%     Fpe = exp(10*(l_ratio1-1))/exp(5);
%     F = Fmax*(Fce+Fpe)*cos(2*pi/360*angle_pennation); % N
%     plot(l_ratio1,F);
%     hold on;
%     legend('U=0.25','U=0.5','U=0.75','U=1')
% end 
% xlabel('Lce/L0');ylabel('Force(N)');
% title('Force - length relationship (Active)')
% figure(3);
% plot(l_ratio1,Fpe*3400);
% xlabel('Lce/L0');ylabel('Force(N)');
% title('Force - length relationship (Passive)')