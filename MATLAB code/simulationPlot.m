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


plot(position(:,1), position(:,2))

figure
plot(position(:,1), position(:,2))
title("Robot Trajectory");

figure
plot(time, theta_m)
title("Heading Angle");

figure
plot(time, theta_store)
title("Omega");

figure
if (length(tracking_error_position(:,2))<length(time))
    plot(time(2:length(time)), tracking_error_position(:,2))
else
    plot(time, tracking_error_position(:,2))
end
title("Error2");

figure
plot(time, omega_value)
title("Wheel Velocities");
