% Define parameters
initial_velocity = 60; % Initial velocity in m/s (adjustable)
launch_angle_deg = 55; % Launch angle in degrees (adjustable)
g = 9.81; % Gravitational acceleration in m/s^2

% Convert angle to radians
launch_angle_rad = deg2rad(launch_angle_deg);

% Calculate initial velocity components
vx = initial_velocity * cos(launch_angle_rad); % Horizontal velocity component
vy = initial_velocity * sin(launch_angle_rad); % Vertical velocity component

% Time of flight
time_of_flight = (2 * vy) / g;

% Range (horizontal distance)
range = vx * time_of_flight;

% Maximum height
max_height = (vy^2) / (2 * g);

% Time vector
t = linspace(0, time_of_flight, 100); % 100 points for smooth curve

% Trajectory equations
x = vx * t; % Horizontal position
y = vy * t - (0.5 * g * t.^2); % Vertical position

% Plot the trajectory
figure;
plot(x, y, 'b-', 'LineWidth', 1.5);
hold on;

% Plot range and max height
plot(range, 0, 'ro', 'MarkerSize', 8, 'DisplayName', 'Range');
plot(range / 2, max_height, 'go', 'MarkerSize', 8, 'DisplayName', 'Max Height');
text(range, 0, sprintf('Range = %.2f m', range), 'VerticalAlignment', 'top', 'HorizontalAlignment', 'right');
text(range / 2, max_height, sprintf('Max Height = %.2f m', max_height), 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');

% Labeling the plot
xlabel('Horizontal Distance (m)');
ylabel('Vertical Distance (m)');
title('Projectile Trajectory');
legend('Trajectory', 'Range', 'Max Height');
grid on;

hold off;