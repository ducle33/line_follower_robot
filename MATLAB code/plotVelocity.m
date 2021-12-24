if (length(omega_value)<length(time))
    omega_value = [0 0; omega_value];
end

ref = 150;
omega_v = omega_value(:,1)*30/pi;
% index which has value greater than 0
ind = length(omega_v( 1:find( omega_v > 0, 1 ) ))-1;
time2 = time - time(ind);
figure;
stairs(time2, omega_v, "LineWidth", 1.2);

grid on
xlim([0, time2(length(time2))]);
ylim([0, max(omega_v)+5]);

title("PID System Response");
ylabel("Wheel Velocity (RPM)");
xlabel("Time (s)");

N = round(max(omega_v)/10);
dy = 10;
yticks((0:N)*dy);

% s=length(omega_v); while omega_v(s)>0.98*ref & omega_v(s)<1.02*ref
%     s=s-1; 
% end
% 
% settling_time=time2(s);
% setText = ("Settling time: " + num2str(round(settling_time,2)) + " (s)");
% fprintf(setText+"\n");
% 
% hold on;
% 
% plot(settling_time,0,'k*');
% line([settling_time settling_time], [0 omega_v(s)], 'Color', 'k', 'LineStyle', '--', 'LineWidth', 1);
% text(settling_time+0.18,0+2,setText,'HorizontalAlignment','center','VerticalAlignment','bottom');
