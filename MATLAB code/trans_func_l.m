function tf = trans_func_l(starting,t,u)

% Input: initial omega, pwm
% Output: recent omega
% Tranfer function: U/I = 3.6382/(1.24*10^-9*s^2+0.0098*s+1)
 tf = (18191/5000 - (18191*exp(-(5000*t)/49))/5000)*u;
%  tf = (3.6382*(1 - exp(-(5000*t)/49)))*u;

end