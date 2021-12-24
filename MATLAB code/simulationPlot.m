if (length(theta_m)<length(time))
    theta_m = [0; theta_m];
end
if (length(theta_store)<length(time))
    theta_store = [0 theta_store];
end
if (length(omega_value)<length(time))
    omega_value = [0 0; omega_value];
end
if (length(theta_m)<length(time))
    
end

omega_v = omega_value(:,1)*30/pi;
% index which has value greater than 0
ind = length(omega_v( 1:find( omega_v > 0, 1 ) ))-1;
time2 = time - time(ind);

n = length(time2);

% Robot Trajectory
plot(position(:,1), position(:,2), 'LineWidth', 1.2, 'Color', 'r')
for i=1:10:(n)
    Xxe = [ (position(i,1)- 0.05*sin(theta_m(i))) (position(i,1)+ 0.05*sin(theta_m(i)))];
    Yxe = [ (position(i,2)+ 0.05*cos(-theta_m(i))) (position(i,2)- 0.05*cos(-theta_m(i)))];
    pause(0.01);
    plot(Xxe, Yxe, 'm','LineWidth',0.4);
    plot(position(i,1),position(i,2 ),'dk','MarkerSize',5);
end

figure
plot(time2, theta_m);
% plot(time2, theta_ref);
xlim([0, time2(length(time2))]);
xlabel("Time (s)");
ylabel("Angle (rad)");
title("Heading Angle");

figure
plot(time2, theta_store)
xlabel("Time (s)");
ylabel("Angular Velocity (rad/s)");
xlim([0, time2(length(time2))]);
title("Omega");

figure
if (length(tracking_error_position(:,2))<length(time))
    plot(time2(2:length(time)), tracking_error_position(:,2))
else
    plot(time2, tracking_error_position(:,2))
end
xlim([0, time2(length(time2))]);
xlabel("Time (s)");
ylabel("Error (mm)");
title("Error2");

figure
plot(time2, omega_value*30/pi, 'LineWidth', 1.4)
xlim([0, time2(length(time2))]);
xlabel("Time (s)");
ylabel("Wheel Velocities (RPM)");
legend(["Right Wheel","Left Wheel"]);
title("Wheel Velocities");

N = round(max(omega_v)/30);
dy = 30;
yticks((0:N)*dy);
