function serialCallback(ser,~)
global timeValue; 
global timeClock;
global preVal;
global startTime;
global port;
fscanf(ser);
val = str2double(fscanf(ser))
if (isnan(val))
    val = preVal;
end

preVal = val;
timeClock = [timeClock; datetime('now') - startTime];
timeValue = [timeValue; val];
minutes(datetime('now') - startTime);
if (minutes(datetime('now') - startTime) > 1/6)
    fclose(port);
    assignin('base', 'timeValue', timeValue);
    assignin('base', 'timeClock', timeClock);
    disp("END!");
    plot(timeClock, timeValue);
end
    