function omega = motor_PID_r(ref,t_samp,t_current,kp,ki,kd,starting)

% Input: omega reference, initial omega
% Output: recent omega
% Tuning PID with Ziegler-Nichols's proceduce from "Process Estimation with Relay Feedback Method"
% Kc = 0.6K0, Ti = T0/2, Td = T0/8;
% Apply PID-controller method from "Discretizing a PID controller"
global pre_error_PID_r pre_pre_error_PID_r integral_r ur
    
error_PID         = ref-starting;                                                   %compute error
% integral          = ki*t_samp*error_PID;
% derivative        = (kd/t_samp)*(error_PID - 2*pre_error_PID + pre_pre_error_PID);
% pwm               = pwm + kp*(error_PID - pre_error_PID) + integral + derivative  %compute PWM
integral_r = integral_r + error_PID*t_samp;
%  if(integral_r > 50)                                                                       %Limit pwm
%     integral_r = 50;
%  end
derivative = (error_PID - pre_error_PID_r)/t_samp;
ur = round((kp*error_PID) + (ki*integral_r) + (kd*derivative));
% pre_pre_error_PID_r = pre_error_PID;                                                  %save previous error
pre_error_PID_r     = error_PID;
% 
 if(ur > 100)                                                                       %Limit pwm
    ur = 100;
 end
 if(ur < 0)
    ur = 0;
 end
 
%compute recent omega
omega     = trans_func_r(t_current,ur);        %return value
omega = omega*pi/30;
end


    