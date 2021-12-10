function tf = trans_func_r(starting,t,u)

% Input: initial omega, pwm
% Output: recent omega
% Tranfer function: U/I = 3.6382/(0.0098*s+1)
% starting = 0;
    tf = starting + (182/50 - (182*exp(-(50*t)/49))/50)*u;
 if (tf>366)
     tf = 366;
 end
 if (tf<0)
     tf = 0;
 end
end