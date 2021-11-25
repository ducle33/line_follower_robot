function tf = trans_func_r(starting,t,u)

% Input: initial omega, pwm
% Output: recent omega
% Tranfer function: U/I = 3.6382/(0.0098*s+1)
 tf = (18191/5000 - (18191*exp(-(5000*t)/49))/5000)*u;
end