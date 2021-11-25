clear all; close all;
global ul pre_error_PID_l  integral_l
ul                = 0;
pre_error_PID_l   = 0;
pre_pre_error_PID_l   = 0;
integral_l        = 0;

kpL = 0.13;
kiL = 23;
kdL = 0;

tsamp = 0.0005;
tsamp_m = 0.01;
n = 1/0.0005;
T = 0;
omega_l_ref = 100;
omega_ref_value = omega_l_ref;
omega_value = 0;
omega_l = 0;
for i = 1:n
    T = [T tsamp*i];
%     if(mod(tsamp*i,0.04)==0)
%         omega_l_ref = omega_l_ref + normrnd(0,20);
%         if(omega_l_ref < 100) 
%             omega_l_ref = 140;
%         end
%         if(omega_l_ref > 300) 
%             omega_l_ref = 140;
%         end
%     end
%     if(mod(tsamp*i,tsamp_m)==0 || i==0)                                                                   % lay mau moi 0,01s
%         omega_l = motor_PID_l(omega_l_ref,tsamp_m,tsamp*i,kpL,kiL,kdL,omega_l); 
%     end
    if(mod(tsamp*i,tsamp_m)==0 || i==0)                                                                   % lay mau moi 0,01s
        omega_l = trans_func_l(omega_l,tsamp*i,100); 
    end
    
    omega_value = [omega_value omega_l];
%     omega_ref_value = [omega_ref_value omega_l_ref]; 
end
plot(T,omega_value,'b');
hold on
plot(T,omega_ref_value,'r');
title("System Response");
ylabel("Motor Speed (rpm)");
xlabel("Time (s)");
