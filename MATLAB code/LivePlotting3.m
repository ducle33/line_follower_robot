% atm_temperature_value.Value and atm_pressure_value.Value are my live feed values acquired from the sensors
% If you want to test my code you'll have to attach these values to something else (you could use a RNG within the loop)
% The same has to be done for Forecast_Temperature and Forecast_Pressure arrays, as they are the result of the forecasting process
%% CREATE A FIGURE TO VISUALISE THE PLOTS
clear; clc; close all;
s = serial('COM5', 'BaudRate', 9600)
s1 = serial('COM6', 'BaudRate', 9600);
s2 = serial('COM7', 'BaudRate', 9600);
min = 0;
max = 200;
scrollWidth = 5;
disp('Close Plot to End Session');
fopen(s);
fopen(s1);
fopen(s2);
f = figure('Name', 'Live Data Feed', 'Position', [50 350 1000 600]);
 
    T_Line = animatedline('Color',[1.000 0.000 0.000],'LineWidth',2); % the line animating the live (main) feed of data in red
    
    P_Line = animatedline('Color',[0.812 0.573 0.000],'LineWidth',2); % Orange
 
% SET TIME FOR THE CYCLE (AND FINISH THE EXPERIMENT)
stopTime = '11/27 06:55'; % MM/DD Time
fisrtTime = 1;
while ~isequal(datestr(now,'mm/DD HH:MM'),stopTime)
   
    if (fisrtTime)
        begTime =  datetime('now');
        fisrtTime = 0;
    end
    %% UPDATE THE ANIMATED LINES
    
    % Get the current time
    t =  milliseconds(datetime('now') - begTime)/17000 - 0.05
    addpoints(T_Line,t,fscanf(s1,'%d')); % Plot real-time temperature value (from the sensor) to the T_Line on Tx axis
    addpoints(P_Line,t,fscanf(s2,'%d')); % Plot real-time pressure value (from the sensor) to the P_Line on Px axis
   
    %% UPDATE X AXES ON ALL SUBPLOTS
    
    axis([t-scrollWidth t+0.25*scrollWidth 0 200]);
%     set(Tx,'xlim',[t-0.25*scrollWidth t+scrollWidth]);
%     dynamicDateTicks(All_Axes, 'HH:MM:SS') % Uses the array of all X axis
    drawnow
        
    %% END ITTERATION
    pause(0.000000000001);
end
disp('END');