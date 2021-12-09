% atm_temperature_value.Value and atm_pressure_value.Value are my live feed values acquired from the sensors
% If you want to test my code you'll have to attach these values to something else (you could use a RNG within the loop)
% The same has to be done for Forecast_Temperature and Forecast_Pressure arrays, as they are the result of the forecasting process
%% CREATE A FIGURE TO VISUALISE THE PLOTS
clear; clc; close all;
s = serial('COM5', 'BaudRate', 9600)
s1 = serial('COM6', 'BaudRate', 9600);
s2 = serial('COM7', 'BaudRate', 9600);
min = 0;
max = 250;
scrollWidth = 6;
disp('Close Plot to End Session');
fopen(s);
fopen(s1);
fopen(s2);
f = figure('Name', 'Live Data Feed', 'Position', [50 350 1000 600]);
xLabel = 'Elapsed Time (s)';    % x-axis label
yLabel = 'Wheel Velocity (RPM)';
xlabel(xLabel,'FontSize',15);
ylabel(yLabel,'FontSize',15);
title("PID System Response",'FontSize',15);
T_Line = animatedline('Color',[1.000 0.000 0.000],'LineWidth',2); % the line animating the live (main) feed of data in red
P_Line = animatedline('Color',[0.000 0.000 1.000],'LineWidth',2); % Orange
xline(1,'--','Color','black');
yline(100,'--','Color','black');
yline(180,'--','Color','black');
yticks(min:10:max)
grid on
legend('Left','Right','Reference','Location','southeast')

% SET TIME FOR THE CYCLE (AND FINISH THE EXPERIMENT)
stopTime = '11/27 06:55'; % MM/DD Time
fisrtTime = 1;

speedRefM1 = 180;
speedRefM2 = 180;
strA = "100";
strB = "100";
count = 0;
countMultiplier = 2;

while ~isequal(datestr(now,'mm/DD HH:MM'),stopTime)
    
    if (fisrtTime)
        begTime =  datetime('now');
        fisrtTime = 0;
    end

    t =  milliseconds(datetime('now') - begTime)/19000 - 0.5;
    
    strA = num2str(speedRefM1);
    strB = num2str(speedRefM2);
    if(count==0)
        fprintf(s,"A");
    end
    if(count==countMultiplier)
        fprintf(s,"A");
        count = 0;
    end    
    
    count = count + 1
    
    addpoints(T_Line,t,fscanf(s1,'%d')); 
    addpoints(P_Line,t,fscanf(s2,'%d'));
    
    axis([t-scrollWidth t+0.25*scrollWidth min max]);
    drawnow
    pause(0.000000001);
    
end
disp('END');