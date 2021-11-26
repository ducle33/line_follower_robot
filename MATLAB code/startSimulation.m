clc
clear all
close all
global v omega n d pre_error_PID_r pre_pre_error_PID_r integral_r ...
    pre_error_PID_l pre_pre_error_PID_l integral_l ul ur n1 n2 n3 n4 n5 n6
format long;
%% Thong so xe
r           = 0.085/2;                                          % ban kinh banh xe
d           = 0.045; %0.08                                      % khoang cach tam 2 banh xe den tam he cam bien
b           = 0.172;                                             % khoang cach giua 2 xe
vr          = 0.8;                                              % van toc mong muon
omega_r_ref = 0;                                                % van toc quay banh phai reference
omega_l_ref = 0;                                                % van toc quay banh trai reference
theta       = 0;                                                % gia tri theta, goc ðinh hýong xe                                             
theta_value = 0;                                                % bien luu theta
map = Reference_map();                                          % map chay

starting_position = [map(1,1) map(2,1) map(3,1)];               % vi tri xe

position = starting_position;                                   % bien luu vi tri xe
error = [0;                                                     % sai so e1, e2, e3
         0;
         0];
tracking_error_position = [error(1,1) error(2,1)];              % luu error
tracking_error_angle = error(3,1);
omega_value = [0 0];                                            % bien toc ðo omega hien tai
omega_value_ref = [omega_r_ref omega_l_ref];                    % bien toc ðo omega hien tai
T       = 0;                                                    % thoi gian
tsamp   = 0.0005;                                                % thoi gian lay mau cua he mo phong
rng('shuffle');
tsamp_s = 0.04;                                                 % thoi gian lay mau ho thong
tsamp_m = 0.01;                                                 % thoi gian lay mau ðong cõ
omega_r = 0;                                                    % gia tri khoi ðau v and omega
omega_l = 0;                                                    % bien van toc banh phai
v_ref   = 0;                                                    % bien van toc banh trai
omega_ref = 0;                                                  % bien van toc tinh tu PID
phr_ref = pi;   %0                                              % bien goc ðinh huong xe mong muon          
v  = vr;    
omega = 0;
counter_motor = 1;
counter_system = 0;


%% Các bi?n sai s? dùng cho b? PID
ur                = 0;
pre_error_PID_r   = 0;
pre_pre_error_PID_r   = 0;
integral_r        = 0;
ul                = 0;
pre_error_PID_l   = 0;
pre_pre_error_PID_l   = 0;
integral_l        = 0;


integral = 0;
preError = 0;

%% He so cua các bo PID

% banh trai
kpL = 0.13;
kiL = 23;
kdL = 0; 

% banh phai
kpR = 0.13;
kiR = 23;
kdR = 0; 

% bam line

% Kp = 13;
% Ki = 2;
% Kd = 0;

% Kp = 13;
% Ki = 2;
% Kd = 1.6;

Kp = 13;
Ki = 2;
Kd = 1.8;

% cac container chua du lieu
point = [];
theta_dot = 0;
theta_m = phr_ref;

e1=[];
omega_store = 0;
theta_reset = 0;
reset1 = 0;
reset0 = 1;

for i = 1 : n
    if (i==n1+n2+n3+n4)
        theta_reset = theta;
        reset1 = 1;
        reset0 = 0;
    end
    counter_motor   = counter_motor + 1;    
    counter_system  = counter_system + 1;    
    

    %% lay mau dong co     
    if(counter_motor == tsamp_m/tsamp)                                                                   % lay mau moi 0,01s
        amp = 2.1;
        encoder_noise = normrnd(0,amp);
        %encoder_noise = 0;
        if(encoder_noise > amp)
            encoder_noise = amp;
        end
        if(encoder_noise < -amp)
            encoder_noise = -amp;
        end
        omega_r = motor_PID_r(omega_r_ref*30/pi,tsamp_m,tsamp*i,kpR,kiR,kdR,omega_r*30/pi+encoder_noise);              % tinh gia tri omega right hien tai
        omega_l = motor_PID_l(omega_l_ref*30/pi,tsamp_m,tsamp*i,kpL,kiL,kdL,omega_l*30/pi+encoder_noise);              % tính giá tri omega left hien tai
        
        omega_value = [omega_value; omega_r' omega_l'];    
        omega_value_ref = [omega_value_ref; omega_r_ref omega_l_ref];
        
        
        v = (omega_r+omega_l)*r/2;                                                                       % tính giá tri velocity hien tai
        omega =(omega_r-omega_l)/(2*b);                                                                 % tính giá tri omega hien tai
          
        counter_motor = 0;
        theta_dot = omega;
    else
        omega_value = [omega_value; omega_r' omega_l'];
        omega_value_ref = [omega_value_ref; omega_r_ref omega_l_ref];
    end
       
    %% Lay mau he thong
    if(counter_system == tsamp_s/tsamp || i == 1)                                      % lay mau he thong moi 0.04s
        theta = starting_position(3);
        R = [cos(theta)  sin(theta) 0;
             -sin(theta) cos(theta) 0;
             0           0          1];
        P = [map(1,i)-starting_position(1);
         map(2,i)-starting_position(2);
         map(3,i)-starting_position(3)];
     
        error = R*P;
        e1 = [e1;error(1)];
        amp = 0.005;
        sensor_noise = normrnd(0,amp);
        if(sensor_noise > amp)
            sensor_noise = amp;
        end
        if(sensor_noise < -amp)
            sensor_noise = -amp;
        end
        %sensor_noise = 0;
        error(2) = error(2)+sensor_noise;
        v_ref = vr;                                                                      % tinh toc ðo reference 
        % omega_ref = k2*error(2)/d;                                                    
        
        integral = integral + error(2);
%         if(integral > 2)                                                                       %Limit pwm
%         integral = 2;
%         end
%         if(integral < -2)                                                                       %Limit pwm
%         integral = -2;
%         end
        omega_ref = 1*(Kp*error(2) + Ki*integral + (error(2) - preError)*Kd);            % tinh thong so dieu khien cua bo pid
%         if(omega_ref > 0.8)                                                                       %Limit pwm
%         omega_ref = 0.8;
%         end 
%         if(omega_ref < -0.8)                                                                       %Limit pwm
%         omega_ref = -0.8;
%         end
        omega_store = [omega_store omega_ref];
        preError = error(2);
        
        omega_r_ref = v_ref/r + omega_ref;      % tinh van toc ref moi                         
        omega_l_ref = v_ref/r - omega_ref;
        
        if(omega_r_ref > 340*pi/30)              % Gioi han van toc 
            omega_r_ref = 340*pi/30;
        end
        if(omega_r_ref < 0)
            omega_r_ref = 0;
        end
        if(omega_l_ref > 340*pi/30)
            omega_l_ref = 340*pi/30;
        end
        if(omega_l_ref < 0)
            omega_l_ref = 0;
        end
        counter_system = 0;
        if(abs(error(2)) > 0.02)
            point = [point; starting_position(1) starting_position(2)];
        end
        % Ghi lai so lieu
        tracking_error_position = [tracking_error_position; error(1)*1000 error(2)*1000];
        tracking_error_angle    = [tracking_error_angle error(3)*180/pi];
    end
    
    %% 0inh vi tri hien tai cua xe va luu lai gia tri                            
    xc_dot = cos(theta)*v - d*sin(theta)*theta_dot;
    yc_dot = sin(theta)*v + d*cos(theta)*theta_dot;
    thetac_dot = omega;
    x = starting_position(1) + xc_dot*tsamp;
    y = starting_position(2) + yc_dot*tsamp;
    theta = starting_position(3) + thetac_dot*tsamp;
    theta_reset = theta_reset - reset1*thetac_dot*tsamp;
    theta_m = [theta_m;theta];
%     starting_position = y(length(y),:);
    starting_position = [x y theta];
    T = [T; i*tsamp];
    position = [position; starting_position];


end
%% Cac lenh ve do thi

figure;
plot(position(:,1),position(:,2),'r','LineWidth',1)
xlabel('X Coordinate (m)'); ylabel('Y Coordinate (m)');

figure(1);
plot(T, omega_value_ref(:, 1), 'b', 'LineWidth', 0.5); grid on
xlabel('Time (s)'); ylabel('Wheel velocity (rad/s)');
hold on
plot(T, omega_value_ref(:, 2), 'r--', 'LineWidth', 0.5);
legend('Right Wheel','Left Wheel');
hold off

figure(2);
% plot(T, tracking_error_position(:, 1), 'b', 'LineWidth', 0.5); grid on
hold on
plot(tracking_error_position(:, 2), 'g', 'LineWidth', 0.5);


% plot(T, tracking_error_angle, 'r--', 'LineWidth', 0.5); xlabel('Time (s)'); ylabel('Tracking error (mm, deg)');
% hold off
% legend('Error 1','Error 2','Error 3');
legend('Error 2');
xlabel('Time (s)');
ylabel('Error 2 (mm)');

omega_value = omega_value*60/(2*pi);
figure(3);
plot(T, omega_value(:, 1), 'b', 'LineWidth', 0.5); grid on
xlabel('Time (s)'); ylabel('Wheel velocity (rpm)');
hold on
plot(T, omega_value(:, 2), 'r--', 'LineWidth', 0.5);
hold off
legend('Left Wheel','Right Wheel');

figure(4);
pause(0.05);
axis equal;
plot(map(1,:),map(2,:),'r','LineWidth',2)
hold on
plot(position(:,1),position(:,2 ),'b','LineWidth',1)
hold on
axis([-1.6 1.6 -0.9 0.9])
%axis equal;

% for i=1:100:(n+1)
%     Xxe = [ (position(i,1)- 0.05*sin(theta_m(i))) (position(i,1)+ 0.05*sin(theta_m(i)))];
%     Yxe = [ (position(i,2)+ 0.05*cos(-theta_m(i))) (position(i,2)- 0.05*cos(-theta_m(i)))];
%     pause(0.05);
%     plot(Xxe, Yxe, 'm','LineWidth',0.4);
%     plot(position(i,1),position(i,2 ),'dk','MarkerSize',5);
% end

xlabel('X Coordinate (m)'); ylabel('Y Coordinate (m)')
legend('Line trajectory','Robot trajectory')
%plot(point(:,1),point(:,2),'');
hold on
 %for i = 1 : 200 : n
 %    DrawRectangle([position(i, 1) position(i, 2) 0.22 0.14 theta_value(i)*pi/180], 'b-');
 %end


hold off
% axis equal

figure(5);
hold on;
ylabel('Theta (rad)'); xlabel('Time (s)')
plot(T,theta_m,'LineWidth',1);
m = [map(1,1);map(2,1);map(3,1)];
map = [m map];
plot(T,map(3,:),'LineWidth',1);
legend('Real heading angle','Line heading angle');
