close all;
path = Reference_map();      

figure(5);
plot(path(1,:),path(2,:),'b','LineWidth', 2)
xlim([-1.5,1.5]);
ylim([-1,1]);
title('Line Map')
xlabel('X Coordinate (m)'); ylabel('Y Coordinate (m)')
hold on