clear
clc

%User Defined Properties 
serialPort = 'COM2';            % define COM port #
%plotTitle = 'Serial Data Log';  % plot title
xLabel = 'Elapsed Time (s)';    % x-axis label
yLabel = 'Wheel Velocity (RPM)';                % y-axis label
plotGrid = 'on';                % 'off' to turn off grid
min = 0;                     % set y-min
max = 250;                      % set y-max
scrollWidth = 5;               % display period in plot, plot entire data log if <= 0
delay = .0000000001;                    % make sure sample faster than resolution

%Define Function Variables
time = 0;
data = zeros(2,1);
count = 0;

%Set up Plot
plotGraph1 = plot(time,data(1,:),'-r',...
            'LineWidth',1,...
            'MarkerFaceColor','w',...
            'MarkerSize',2);
hold on
plotGraph2 = plot(time,data(2,:),'-b',...
            'LineWidth',1,...
            'MarkerFaceColor','w',...
            'MarkerSize',2);
yline(180,'--','Color','black');
legend('Left','Right','Reference','Location','southeast')
%title(plotTitle,'FontSize',25);
xlabel(xLabel,'FontSize',15);
ylabel(yLabel,'FontSize',15);
axis([0 scrollWidth min max]);
grid(plotGrid);

%Open Serial COM Port
s = serial(serialPort, 'BaudRate', 9600)
disp('Close Plot to End Session');
fopen(s);

firstTime=1;

while ishandle(plotGraph2) && ishandle(plotGraph1)  %Loop when Plot is Active

dat = fscanf(s,'%s'); %Read Data from Serial as Float

if(~isempty(dat) && ischar(dat)) %Make sure Data Type is Correct        
    if (firstTime)
        tic
        firstTime = 0;
    end
    count = count + 1;    
    time(count) = toc/10;    %Extract Elapsed Time in seconds
    
    if(dat(1)=='A')
        dat(1) = '0';
        data(1,count) = str2double(dat);
    end
    if(dat(1)=='B')
        dat(1) = '0';
        data(2,count) = str2double(dat);
    end 
    
    if(data(1,count)<10 && count > 1)
        data(1,count) = data(1,count-1);
    end
    if(data(2,count)<10 && count > 1)
        data(2,count) = data(2,count-1);
    end

    %Set Axis according to Scroll Width
    if(scrollWidth > 0)
    set(plotGraph1,'XData',time(time > time(count)-scrollWidth),...
        'YData', data(1,time > time(count)-scrollWidth));
    set(plotGraph2,'XData',time(time > time(count)-scrollWidth),...
        'YData', data(2,time > time(count)-scrollWidth));

    axis([time(count)-scrollWidth time(count) min max]);
    else
    set(plotGraph1,'XData',time,'YData',data(2,:));
    set(plotGraph2,'XData',time,'YData',data(1,:));

    axis([0 time(count) min max]);
    end

    %Allow MATLAB to Update Plot
    pause(0);
end
end

%Close Serial COM Port and Delete useless Variables
fclose(s);

clear count dat delay max min plotGraph plotGraph1 plotGraph2 plotGrid...
    plotTitle s scrollWidth serialPort xLabel yLabel;

disp('Session Terminated');

prompt = 'Export Data? [Y/N]: ';
str = input(prompt,'s');
if str == 'Y' || strcmp(str, ' Y') || str == 'y' || strcmp(str, ' y')
    %export data
    csvwrite('accelData.txt',data);
    type accelData.txt;
else
end

clear str prompt;