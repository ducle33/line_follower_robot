function tf = trans_func_r(starting,t,u)

% Input: initial omega, pwm
% Output: recent omega
% Tranfer function: U/I = 3.6382/(0.0098*s+1)
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