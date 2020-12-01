close all;
clear all;
clc;
% load model_out_IVSS_HZ;
% load sys_opt;
%  load model_out_IVSS_NANC;
  load e_IVSS_NANC_BV;
 load e_IVSS;
%   figure()
% subplot(221), plot([0:N-1]*Ts,teta_hat(1,:),'--','LineWidth',2)
% hold on, plot([0:N-1]*Ts,teta_hat_RLS(1)*ones(N,1),'m','LineWidth',2), title('a1'), grid on, legend('a1 hat','a1');
% xlim([0 N-1]*Ts)
% 
% subplot(222),plot([0:N-1]*Ts,teta_hat(2,:),'--','LineWidth',2)
% hold on, plot([0:N-1]*Ts,teta_hat_RLS(2)*ones(N,1),'m','LineWidth',2), title('a2'), grid on; legend('a2 hat','a2');
% xlim([0 N-1]*Ts)
% 
% subplot(223), plot([0:N-1]*Ts,teta_hat(3,:),'--','LineWidth',2)
% hold on, plot([0:N-1]*Ts,teta_hat_RLS(3)*ones(N,1),'m','LineWidth',2), title('b1'), grid on; legend('b1 hat','b1');
% xlim([0 N-1]*Ts)
% 
% subplot(224),plot([0:N-1]*Ts,teta_hat(4,:),'--','LineWidth',2)
% hold on, plot([0:N-1]*Ts,teta_hat_RLS(4)*ones(N,1),'m','LineWidth',2), title('b2'), grid on; legend('b2 hat','b2');
% xlim([0 N-1]*Ts)

%% compare between desired signal and Algorithm output (estimated signal)
figure(1)
% Fs = 5e4;              % samples per second              
% t = 0:1/Fs:1;
% plot(t, model_out_IVSS_HZ,'-r');
% hold on
% plot(t, sys_opt,'-k');
% hold on
% plot(t, model_out_IVSS_NANC,'-b');
% % hold on
% % plot(t, model_out_LMS,'-g');
% % hold on
% % plot(t, model_out_C_VSS,'-w');
% xlabel('Time');ylabel('Value(V)');legend('Algorithm Output Proposed VSS', 'Det signal',' NANC Algorithm Output')
% 
% figure(2)
plot(e_IVSS_NANC_BV, '-r');
hold on
plot(e_IVSS, '-b');
% hold on
% plot(e_C_vss, '-k');
% hold on
% plot(e_LMS, '-g');
 xlabel('Number of iterations');ylabel('Amplitude(V)');legend('NANC (Error)','Proposed VSSLM (Error)')