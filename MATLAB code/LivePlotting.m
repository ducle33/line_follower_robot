clear
clc

%User Defined Properties 
serialPort = 'COM2';           % define COM port #
baudeRate = 9600;
plotTitle = 'Serial Data Log';  % plot title
xLabel = 'Elapsed Time (s)';    % x-axis label
yLabel = 'Data';                % y-axis label
plotGrid = 'on';                % 'off' to turn off grid
min = 0;                     % set y-min
max = 200;                      % set y-max
scrollWidth = 10;               % display period in plot, plot entire data log if <= 0
delay = .01;                    % make sure sample faster than resolution

%Define Function Variables
time = 0;
data = 0;
count = 0;

%Set up Plot
plotGraph = plot(time,data);

title(plotTitle,'FontSize',25);
xlabel(xLabel,'FontSize',15);
ylabel(yLabel,'FontSize',15);
axis([0 10 min max]);
grid(plotGrid);

%Open Serial COM Port
s = serial(serialPort, 'BaudRate',baudeRate)
disp('Close Plot to End Session');
fopen(s);

tic

while ishandle(plotGraph) %Loop when Plot is Active

    dat = fscanf(s,'%s'); %Read Data from Serial as Float

    if(~isempty(dat) && ischar(dat)) %Make sure Data Type is Correct        
        count = count + 1;
        if(dat(1)=='A')
            dat(1) = '0';
            dat = str2double(dat);
        end
        if(dat(1)=='B')
            dat(1) = '0';
            dat = str2double(dat);
        end
        time(count) = toc;    %Extract Elapsed Time
        data(count) = dat; %Extract 1st Data Element

        data(count);

        %Set Axis according to Scroll Width
        if(scrollWidth > 0)
        set(plotGraph,'XData',time(time > time(count)-scrollWidth),'YData',data(time > time(count)-scrollWidth));
        %plot(time(time > time(count)-scrollWidth),data3(time > time(count)-scrollWidth));
        axis([time(count)-scrollWidth time(count) min max]);
        %set(plotGraph,'XData',time(time > time(count)-scrollWidth),'YData',data3(time > time(count)-scrollWidth));
        %axis([time(count)-scrollWidth time(count) min max]);
        else
        set(plotGraph,'XData',time,'YData',data);
        axis([0 time(count) min max]);
        end

        %Allow MATLAB to Update Plot
        pause(delay);
    end
end

%Close Serial COM Port and Delete useless Variables
fclose(s);
clear count dat delay max min baudRate plotGraph plotGrid plotTitle s ...
        scrollWidth serialPort xLabel yLabel;


disp('Session Terminated...');