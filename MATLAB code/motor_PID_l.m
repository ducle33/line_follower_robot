function omega = motor_PID_l(ref,t_samp,t_current,kp,ki,kd,starting)


global ul pre_error_PID_l  integral_l
    
error_PID         = ref-starting;                                          %compute error
% integral          = ki*t_samp*error_PID;
% derivative        = (kd/t_samp)*(error_PID - 2*pre_error_PID + pre_pre_error_PID);
% pwm               = pwm + kp*(error_PID - pre_error_PID) + integral + derivative   %compute PWM
integral_l = integral_l + error_PID*t_samp;
%  if(integral_l > 50)                                                                       %Limit pwm
%     integral_l = 50;
%  end
derivative = (error_PID - pre_error_PID_l)/t_samp;

ul = round((kp*error_PID) + (ki*integral_l) + (kd*derivative));

% pre_pre_error_PID_l = pre_error_PID_l;                                                  %save previous error
pre_error_PID_l     = error_PID;       

 if(ul > 100)                                                                       %Limit pwm
    ul = 100;
 end
 if(ul < 0)
    ul = 0;
 end
%                                               compute recent omega
omega = trans_func_l(starting,t_current,ul); %return value
omega = omega*pi/30;
end

    