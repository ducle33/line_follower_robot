function tf = trans_func_l(starting,t,u)

% Input: initial omega, pwm
% Output: recent omega
% Tranfer function: U/I = 2.3/(1+0.4*s)
% starting = 0;
%     tf = starting + (182/50 - (182*exp(-(50*t)/49))/50)*u;
    tf = starting + (10187/5000 - (10187*exp(-(18014398509481984*t)/585936325919411))/5000)*u;
 if (tf>204)
     tf = 204;
 end
 if (tf<0)
     tf = 0;
 end
end