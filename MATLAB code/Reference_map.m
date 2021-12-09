
function map = Reference_map()
%xr,yr;                 reference coordinate
%phr;                   angle of reference section

global xr1 xr2 xr3 xr4 xr5 xr6 
global yr1 yr2 yr3 yr4 yr5 yr6
global phr1 phr2 phr3 phr4 phr5 phr6 
global d_thresh

dt = 0.005;             %sampling time, s
vr = 0.8;               %refernce velocity, m / s
x0 = -1;     y0 = 0.5;     %starting point
d_thresh = dt*vr;

% A-B
x1 = x0 + 2   ;   y1 = y0;
xr1(1)  = x1;        yr1(1) = y1;
phr1(1) = pi;
n1 = round( 2 / (vr * dt)) + 1;
for i = 2 : n1
   xr1(i)  =    xr1(i - 1) - vr*dt;
   yr1(i)  =    yr1(i - 1);
   phr1(i) =    phr1(i - 1);
end

% B-C
Rr = 0.5;
xr2(1)  = xr1(n1);                 yr2(1) = yr1(n1);
phr2(1) = phr1(n1);
n2 = round(0.5* pi * Rr / (vr * dt)) + 1;
for i = 2 : n2
  if i == 2 
       j = 0; 
   end
   xr2(i)  =    xr2(1) - Rr * sin(vr * j * dt / Rr);
   yr2(i)  =    yr2(1) - Rr * (1 - cos(vr * j * dt / Rr));
   phr2(i) =    phr2(i - 1) + vr * dt / Rr;
   j       =    j + 1;  
end

% C-D
Rr = 0.5;
xr3(1)  = xr2(n2);                 yr3(1) = yr2(n2);
phr3(1) = phr2(n2);
n3 = round(0.5* pi * Rr / (vr * dt)) + 1;
for i = 2 : n3
  if i == 2 
       j = 0; 
   end
   xr3(i)  =    xr3(1) + Rr * (1 - cos(vr * j * dt / Rr));
   yr3(i)  =    yr3(1) - Rr * sin(vr * j * dt / Rr);
   phr3(i) =    phr3(i - 1) + vr * dt / Rr;
   j       =    j + 1;  
end

% D-E
xr4(1)  = xr3(n3);                 yr4(1) = yr3(n3);
phr4(1) = phr3(n3);
n4 = round( 2 / (vr * dt)) + 1;
for i = 2 : n4
   xr4(i)  =    xr4(i - 1) + vr*dt;
   yr4(i)  =    yr4(i - 1);
   phr4(i) =    phr4(i - 1);
end

% E-F
Rr = 0.5;
xr5(1)  = xr4(n4);                 yr5(1) = yr4(n4);
phr5(1) = phr4(n4);
n5 = round(0.5* pi * Rr / (vr * dt)) + 1;
for i = 2 : n5
  if i == 2 
       j = 0; 
   end
   xr5(i)  =    xr5(1) + Rr * sin(vr * j * dt / Rr);
   yr5(i)  =    yr5(1) + Rr * (1 - cos(vr * j * dt / Rr));
   phr5(i) =    phr5(i - 1) + vr * dt / Rr;
   j       =    j + 1;  
end

% F-A
Rr = 0.5;
xr6(1)  = xr5(n5);                 yr6(1) = yr5(n5);
phr6(1) = phr5(n5);
n6 = round(0.5* pi * Rr / (vr * dt)) + 1;
for i = 2 : n6
  if i == 2
       j = 0;
   end
   xr6(i)  =    xr6(1) - Rr * (1 - cos(vr * j * dt / Rr));
   yr6(i)  =    yr6(1) + Rr * sin(vr * j * dt / Rr);
   phr6(i) =    phr6(i - 1) + vr * dt / Rr;
   j       =    j + 1;
end

xr  = [xr1, xr2, xr3, xr4, xr5, xr6];
yr  = [yr1, yr2, yr3, yr4, yr5, yr6];
phr = [phr1, phr2, phr3, phr4, phr5, phr6];
n   = n1 + n2 + n3 + n4 + n5 + n6;
map = [xr; yr; phr];

end
