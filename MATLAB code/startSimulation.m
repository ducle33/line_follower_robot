%% Get start position
clear; clc; close all;
global xr1 xr2 xr3 xr4 xr5 xr6 
global yr1 yr2 yr3 yr4 yr5 yr6
global phr1 phr2 phr3 phr4 phr5 phr6
global d_thresh

timeScalar = 1000;
timeScalar = timeScalar*156.044/31.016514;

path = Reference_map();      

fig = figure;
plot(path(1,:),path(2,:),'b','LineWidth', 2)
xlim([-1.5,1.5]);
ylim([-1,1]);
title('Line Map')
xlabel('X Coordinate (m)'); ylabel('Y Coordinate (m)')
hold on
global mousePos;
mousePos = [0 0]
% Enable data cursor mode
datacursormode on
dcm_obj = datacursormode(fig);
% Set update function
set(dcm_obj,'UpdateFcn',@myupdatefcn)
% Wait while the user to click
disp('Click on map to choose robot starting position')
pause 
% Export cursor to workspace
info_struct = getCursorInfo(dcm_obj);
if isfield(info_struct, 'Position')
  disp('Clicked position is')
  disp(info_struct.Position)
end
mousePos = [info_struct.Position]
startPos = [0, 0.5, 3.14];

if (mousePos(1)>=-1 && mousePos(1)<1 && mousePos(2)>=0)
    %Segment1, x decreasing
    ind = ceil(abs(xr1(1)-mousePos(1))/d_thresh) + 2;
    if(ind > length(xr1))
        startPos = [xr2(2), yr2(2), phr2(2)]
    end
    if(ind <= length(xr1))
        startPos = [xr1(ind), yr1(ind), phr1(ind)]
    end
end
if (mousePos(1)<-1 && mousePos(2)>=0)
    %Segment2, x decreasing, y decreasing
    Lp = 0; Rp = length(xr2);
    while 1
        Mp = floor((Lp+Rp)/2);
        if (xr2(Mp)==mousePos(1) && yr2(Mp)==mousePos(2))
            ind = Mp + 2;
            if(ind > length(xr2))
                startPos = [xr3(2), yr3(2), phr3(2)]
            end
            if(ind <= length(xr2))
                startPos = [xr2(ind), yr2(ind), phr2(ind)]
            end
            break;
        end
        if (xr2(Mp)<mousePos(1) && yr2(Mp)<mousePos(2) ...
                && sqrt((xr2(Mp)-mousePos(1))^2 + ...
                (yr2(Mp)-mousePos(2))^2) < 2*d_thresh)
            ind = Mp + 2;
            if(ind > length(xr2))
                startPos = [xr3(2), yr3(2), phr3(2)]
            end
            if(ind <= length(xr2))
                startPos = [xr2(ind), yr2(ind), phr2(ind)]
            end
            break;
        end
        if (xr2(Mp)>mousePos(1) && yr2(Mp)>mousePos(2))
            Lp = Mp + 1;
        end
        if (xr2(Mp)<mousePos(1) && yr2(Mp)<mousePos(2))
            Rp = Mp - 1;
        end
    end
end
timeScalar = timeScalar*5;
if (mousePos(1)<-1 && mousePos(2)<0)
    %Segment3, x increasing, y decreasing
    Lp = 0; Rp = length(xr2);
    while 1
        Mp = floor((Lp+Rp)/2);
        if (xr3(Mp)==mousePos(1) && yr3(Mp)==mousePos(2))
            ind = Mp + 2;
            if(ind > length(xr3))
                startPos = [xr4(2), yr4(2), phr4(2)]
            end
            if(ind <= length(xr3))
                startPos = [xr3(ind), yr3(ind), phr3(ind)]
            end
            break;
        end
        if (xr3(Mp)>mousePos(1) && yr3(Mp)<mousePos(2) ...
                && sqrt((xr3(Mp)-mousePos(1))^2 + ...
                (yr3(Mp)-mousePos(2))^2) < 2*d_thresh)
            ind = Mp+2;
            if(ind > length(xr3))
                startPos = [xr4(2), yr4(2), phr4(2)]
            end
            if(ind <= length(xr3))
                startPos = [xr3(ind), yr3(ind), phr3(ind)]
            end
            break;
        end
        if (xr3(Mp)<mousePos(1) && yr3(Mp)>mousePos(2))
            Lp = Mp + 1;
        end
        if (xr3(Mp)>mousePos(1) && yr3(Mp)<mousePos(2))
            Rp = Mp - 1;
        end
    end
end
if (mousePos(1)>=-1 && mousePos(1)<1 && mousePos(2)<0)
    %Segment4, x increasing
    ind = ceil(abs(xr4(1)-mousePos(1))/d_thresh) + 2;
    if(ind > length(xr4))
        startPos = [xr5(2), yr5(2), phr5(2)]
    end
    if(ind <= length(xr4))
        startPos = [xr4(ind), yr4(ind), phr4(ind)]
    end
end

if (mousePos(1)>=1 && mousePos(2)<0)
    %Segment5, x increasing, y increasing
    Lp = 0; Rp = length(xr5);
    while 1
        Mp = floor((Lp+Rp)/2);
        if (xr5(Mp)==mousePos(1) && yr5(Mp)==mousePos(2))
            ind = Mp + 2;
            if(ind > length(xr5))
                startPos = [xr6(2), yr6(2), phr6(2)]
            end
            if(ind <= length(xr5))
                startPos = [xr5(ind), yr5(ind), phr5(ind)]
            end
            break;
        end
        if (xr5(Mp)>mousePos(1) && yr5(Mp)>mousePos(2) ...
                && sqrt((xr5(Mp)-mousePos(1))^2 + ...
                (yr5(Mp)-mousePos(2))^2) < 2*d_thresh)
            ind = Mp + 2;
            if(ind > length(xr5))
                startPos = [xr6(2), yr6(2), phr6(2)]
            end
            if(ind <= length(xr5))
                startPos = [xr5(ind), yr5(ind), phr5(ind)]
            end
            break;
        end
        if (xr5(Mp)<mousePos(1) && yr5(Mp)<mousePos(2))
            Lp = Mp + 1;
        end
        if (xr5(Mp)>mousePos(1) && yr5(Mp)>mousePos(2))
            Rp = Mp - 1;
        end
    end
end

if (mousePos(1)>=1 && mousePos(2)>=0)
    %Segment6, x decreasing, y increasing
    Lp = 0; Rp = length(xr6);
    while 1
        Mp = floor((Lp+Rp)/2);
        if (xr6(Mp)==mousePos(1) && yr6(Mp)==mousePos(2))
            ind = Mp + 2;
            if(ind > length(xr6))
                startPos = [xr1(2), yr1(2), phr1(2)]
            end
            if(ind <= length(xr6))
                startPos = [xr6(ind), yr6(ind), phr6(ind)]
            end
            break;
        end
        if (xr6(Mp)<mousePos(1) && yr6(Mp)>mousePos(2) ...
                && sqrt((xr5(Mp)-mousePos(1))^2 + ...
                (yr5(Mp)-mousePos(2))^2) < 2*d_thresh)
            ind = Mp + 2;
            if(ind > length(xr6))
                startPos = [xr1(2), yr1(2), phr1(2)]
            end
            if(ind <= length(xr6))
                startPos = [xr6(ind), yr6(ind), phr6(ind)]
            end
            break;
        end
        if (xr6(Mp)>mousePos(1) && yr6(Mp)<mousePos(2))
            Lp = Mp + 1
        end
        if (xr6(Mp)<mousePos(1) && yr6(Mp)>mousePos(2))
            Rp = Mp - 1
        end
    end
end


%% Open Ports
s5 = serial('COM5', 'BaudRate', 9600)
s6 = serial('COM6', 'BaudRate', 9600);
s7 = serial('COM7', 'BaudRate', 9600);
s8 = serial('COM8', 'BaudRate', 9600);
s9 = serial('COM9', 'BaudRate', 9600);
s11 = serial('COM11', 'BaudRate', 9600);
s13 = serial('COM13', 'BaudRate', 9600);

%Port 10: vel
%Port 12: omega
%Port 14: err2

fopen(s5);
fopen(s6);
fopen(s7);
fopen(s8);
fopen(s9);
fopen(s11);
fopen(s13);

r           = 0.085/2; % ban kinh banh xe
d           = 0.159; % khoang cach tam 2 banh xe den tam he cam bien
b           = 0.172; % khoang cach giua 2 banh xe

vel = 0;
omega = 0;
omega_r = 0;
omega_l = 0;
omega_pre_l = 0;
omega_buff_r = 0;
omega_pre_r = 0;
omega_buff_l = 0;
currentPos = startPos
refPos = startPos
prePos = startPos
err2Send = 0;
nextIndex = 4;

time = [];
theta_m = [];
theta_store = [];
position = [];
omega_value = [];
tracking_error_position = [];
tracking_error_angle = [];

fisrtTime = 1;
firsTime2 = 1;
firsTime3 = 1;
count = 0;
countStable = 0;
notStable = 1;

while isnumeric(fscanf(s6,'%d'))
    
    if (fisrtTime)
        begTime =  datetime('now');
        theta = currentPos(3);
        fisrtTime = 0;
    end
    
    t =  milliseconds(datetime('now') - begTime)/timeScalar;
    time = [time t];
    
    if (countStable>=100)
        countStable = 0;
        notStable = 0;
    end
    
    amp = 6;
    sensor_noise = normrnd(0,amp);
    if(sensor_noise > amp)
        sensor_noise = amp;
    end
    if(sensor_noise < -amp)
        sensor_noise = -amp;
    end
    
    if (notStable)
        flushinput(s6);
        flushinput(s7);
        countStable = countStable + 1;
        theta_m = [theta_m; theta];
        theta_store = [theta_store 0];
        position = [position; currentPos];
        omega_value = [omega_value; 0 0];
        tracking_error_position = [tracking_error_position; 0 0];
        tracking_error_angle = [tracking_error_angle 0];
        continue
    end
    
    
    % Convert omega from RPM to rad/s
    omega_buff_l = fscanf(s6,'%d')/30*pi + sensor_noise;
    if (isempty(omega_buff_l)==0 && omega_buff_l<30 && omega_buff_l>5)
        if (firsTime2)
           omega_l = omega_buff_l;
           omega_pre_l = omega_buff_l;
           firstTime2 = 0;
        else
            if (abs(omega_pre_l-omega_buff_l)<2)
                omega_l = omega_buff_l;
                omega_pre_l = omega_buff_l;
            end
        end
    end
    omega_buff_r = fscanf(s7,'%d')/30*pi + sensor_noise;
    if (isempty(omega_buff_r)==0 && omega_buff_r<30 && omega_buff_r>13)
        if (firsTime3)
           omega_r = omega_buff_r;
           omega_pre_r = omega_buff_r;
           firstTime3 = 0;
        else
            if (abs(omega_pre_r-omega_buff_r)<2)
                omega_r = omega_buff_r;
                omega_pre_r = omega_buff_r;
            end
        end
    end
    
    % Calculate vel and omega and send to ports for debugging
    vel = (omega_r+omega_l)*r/2;                                                                       % tính giá tri velocity hien tai
    omega = (omega_r-omega_l)/(2*b);
%     fprintf(s9,num2str(vel));
%     fprintf(s11,num2str(omega));

    theta_store = [theta_store omega];
    theta_dot = omega;

    omega_value = [omega_value; omega_r omega_l];
    
    % Find the ref position for the robot
    
    if (currentPos(1)>=0.5 && currentPos(1)<1 && currentPos(2)>=0)
        %Segment11, x decreasing
        minDist = 999;
        ind = 0;
        for i = 1:floor(length(xr1)/4)
            if ( sqrt( ( xr1(i)-currentPos(1) )^2 ...
                     + ( yr1(i)-currentPos(2) )^2 ) < minDist )
                minDist = sqrt( ( xr1(i)-currentPos(1) )^2 + ( yr1(i)-currentPos(2) )^2 );
                ind = i;
            end
        end
        ind = ind + nextIndex;
        if(ind > length(xr1))
            refPos = [xr2(nextIndex), yr2(nextIndex), phr2(nextIndex)];
        end
        if(ind <= length(xr1))
            refPos = [xr1(ind), yr1(ind), phr1(ind)];
        end
    end
    
    if (currentPos(1)>=0 && currentPos(1)<0.5 && currentPos(2)>=0)
        %Segment12, x decreasing
        minDist = 999;
        ind = 0;
        for i = ceil(length(xr1)/4):floor(length(xr1)/2)
            if ( sqrt( ( xr1(i)-currentPos(1) )^2 ...
                     + ( yr1(i)-currentPos(2) )^2 ) < minDist )
                minDist = sqrt( ( xr1(i)-currentPos(1) )^2 + ( yr1(i)-currentPos(2) )^2 );
                ind = i;
            end
        end
        ind = ind + nextIndex;
        if(ind > length(xr1))
            refPos = [xr2(nextIndex), yr2(nextIndex), phr2(nextIndex)];
        end
        if(ind <= length(xr1))
            refPos = [xr1(ind), yr1(ind), phr1(ind)];
        end
    end
    
    if (currentPos(1)>=-0.5 && currentPos(1)<0 && currentPos(2)>=0)
        %Segment13, x decreasing
        minDist = 999;
        ind = 0;
        for i = ceil(length(xr1)/2):floor(length(xr1)/4*3)
            if ( sqrt( ( xr1(i)-currentPos(1) )^2 ...
                     + ( yr1(i)-currentPos(2) )^2 ) < minDist )
                minDist = sqrt( ( xr1(i)-currentPos(1) )^2 + ( yr1(i)-currentPos(2) )^2 );
                ind = i;
            end
        end
        ind = ind + nextIndex;
        if(ind > length(xr1))
            refPos = [xr2(nextIndex), yr2(nextIndex), phr2(nextIndex)];
        end
        if(ind <= length(xr1))
            refPos = [xr1(ind), yr1(ind), phr1(ind)];
        end
    end
    
    if (currentPos(1)>=-1 && currentPos(1)<-0.5 && currentPos(2)>=0)
        %Segment14, x decreasing
        minDist = 999;
        ind = 0;
        for i = ceil(length(xr1)/4*3):length(xr1)
            if ( sqrt( ( xr1(i)-currentPos(1) )^2 ...
                     + ( yr1(i)-currentPos(2) )^2 ) < minDist )
                minDist = sqrt( ( xr1(i)-currentPos(1) )^2 + ( yr1(i)-currentPos(2) )^2 );
                ind = i;
            end
        end
        ind = ind + nextIndex;
        if(ind > length(xr1))
            refPos = [xr2(nextIndex), yr2(nextIndex), phr2(nextIndex)];
        end
        if(ind <= length(xr1))
            refPos = [xr1(ind), yr1(ind), phr1(ind)];
        end
    end
    
    if (currentPos(1)<-1 && currentPos(2)>=0)
        %Segment2, x decreasing, y decreasing
        minDist = 999;
        ind = 0;
        for i = 1:length(xr2)
            if ( sqrt( ( xr2(i)-currentPos(1) )^2 ...
                     + ( yr2(i)-currentPos(2) )^2 ) < minDist )
                minDist = sqrt( ( xr2(i)-currentPos(1) )^2 + ( yr2(i)-currentPos(2) )^2 );
                ind = i;
            end
        end
        ind = ind + nextIndex;
        if(ind > length(xr2))
            refPos = [xr3(nextIndex), yr3(nextIndex), phr3(nextIndex)];
        end
        if(ind <= length(xr2))
            refPos = [xr2(ind), yr2(ind), phr2(ind)];
        end
    end

    if (currentPos(1)<-1 && currentPos(2)<0)
        %Segment3, x increasing, y decreasing
        minDist = 999;
        ind = 0;
        for i = 1:length(xr3)
            if ( sqrt( ( xr3(i)-currentPos(1) )^2 ...
                     + ( yr3(i)-currentPos(2) )^2 ) < minDist )
                minDist = sqrt( ( xr3(i)-currentPos(1) )^2 + ( yr3(i)-currentPos(2) )^2 );
                ind = i;
            end
        end
        ind = ind + nextIndex;
        if(ind > length(xr3))
            refPos = [xr4(nextIndex), yr4(nextIndex), phr4(nextIndex)];
        end
        if(ind <= length(xr3))
            refPos = [xr3(ind), yr3(ind), phr3(ind)];
        end
    end
    
    if (currentPos(1)>=-1 && currentPos(1)<0 && currentPos(2)<0)
        %Segment41, x increasing
        minDist = 999;
        ind = 0;
        for i = 1:floor(length(xr4)/2)
            if ( sqrt( ( xr4(i)-currentPos(1) )^2 ...
                     + ( yr4(i)-currentPos(2) )^2 ) < minDist )
                minDist = sqrt( ( xr4(i)-currentPos(1) )^2 + ( yr4(i)-currentPos(2) )^2 );
                ind = i;
            end
        end
        ind = ind + nextIndex;
        if(ind > length(xr4))
            refPos = [xr5(nextIndex), yr5(nextIndex), phr5(nextIndex)];
        end
        if(ind <= length(xr4))
            refPos = [xr4(ind), yr4(ind), phr4(ind)];
        end
    end

    if (currentPos(1)>=0 && currentPos(1)<1 && currentPos(2)<0)
        %Segment42, x increasing
        minDist = 999;
        ind = 0;
        for i = ceil(length(xr4)/2):length(xr4)
            if ( sqrt( ( xr4(i)-currentPos(1) )^2 ...
                     + ( yr4(i)-currentPos(2) )^2 ) < minDist )
                minDist = sqrt( ( xr4(i)-currentPos(1) )^2 + ( yr4(i)-currentPos(2) )^2 );
                ind = i;
            end
        end
        ind = ind + nextIndex;
        if(ind > length(xr4))
            refPos = [xr5(nextIndex), yr5(nextIndex), phr5(nextIndex)];
        end
        if(ind <= length(xr4))
            refPos = [xr4(ind), yr4(ind), phr4(ind)];
        end
    end

    if (currentPos(1)>=1 && currentPos(2)<0)
        %Segment5, x increasing, y increasing
        minDist = 999;
        ind = 0;
        for i = 1:length(xr5)
            if ( sqrt( ( xr5(i)-currentPos(1) )^2 ...
                     + ( yr5(i)-currentPos(2) )^2 ) < minDist )
                minDist = sqrt( ( xr5(i)-currentPos(1) )^2 + ( yr5(i)-currentPos(2) )^2 );
                ind = i;
            end
        end
        ind = ind + nextIndex;
        if(ind > length(xr5))
            refPos = [xr6(nextIndex), yr6(nextIndex), phr6(nextIndex)];
        end
        if(ind <= length(xr5))
            refPos = [xr5(ind), yr5(ind), phr5(ind)];
        end
    end

    if (currentPos(1)>=1 && currentPos(2)>=0)
        %Segment6, x decreasing, y increasing
        minDist = 999;
        ind = 0;
        for i = 1:length(xr6)
            if ( sqrt( ( xr6(i)-currentPos(1) )^2 ...
                     + ( yr6(i)-currentPos(2) )^2 ) < minDist )
                minDist = sqrt( ( xr6(i)-currentPos(1) )^2 + ( yr6(i)-currentPos(2) )^2 );
                ind = i;
            end
        end
        ind = ind + nextIndex;
        if(ind > length(xr6))
            refPos = [xr1(nextIndex), yr1(nextIndex), phr1(nextIndex)];
        end
        if(ind <= length(xr6))
            refPos = [xr6(ind), yr6(ind), phr6(ind)];
        end
    end
    
    % Calculate error
    R = [cos(theta)  sin(theta) 0;
         -sin(theta) cos(theta) 0;
         0           0          1];
    P = [refPos(1)-currentPos(1);
        refPos(2)-currentPos(2);
        refPos(3)-currentPos(3)];
    error = R*P;
    
    % Add Gaussian noise
    amp = 0.005;
    sensor_noise = normrnd(0,amp);
    if(sensor_noise > amp)
        sensor_noise = amp;
    end
    if(sensor_noise < -amp)
        sensor_noise = -amp;
    end
    sensor_noise = 0;
    error(2) = error(2) + sensor_noise;
    
    err2Send = round((error(2) + 0.1)*255/0.2);
    if (err2Send>255)
        err2Send = 255;
    end
    if (err2Send<0)
        err2Send = 0;
    end
    
    % Send err2 to PIC18F4431 every number of counts
    if (count==1)
        fprintf(s5,"%c",err2Send);
        count=0;
    end
    % Send err2 to port for debugging
    fprintf(s13,num2str(err2Send));
    
    tracking_error_position = [tracking_error_position; error(1)*1000 error(2)*1000];
    tracking_error_angle = [tracking_error_angle error(3)*180/pi];
                          
    xc_dot = cos(theta)*vel - d*sin(theta)*theta_dot;
    yc_dot = sin(theta)*vel + d*cos(theta)*theta_dot;
    thetac_dot = omega;
    tsamp = milliseconds(datetime('now') - begTime)/timeScalar - t;

    x = currentPos(1) + xc_dot*tsamp;
    y = currentPos(2) + yc_dot*tsamp;
    theta = currentPos(3) + thetac_dot*tsamp;
    
    theta_m = [theta_m; theta];
    refPos
    currentPos = [x y theta]
    position = [position; currentPos];
    
    count = count + 1;

end




function output_txt = myupdatefcn(~,event_obj)
  % ~            Currently not used (empty)
  % event_obj    Object containing event data structure
  % output_txt   Data cursor text
  pos = get(event_obj, 'Position');
  output_txt = {['x: ' num2str(pos(1))], ['y: ' num2str(pos(2))]};
end


