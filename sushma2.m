% Parameters
num_points = 100; % Number of random points to generate

% Generate random numbers
random_sequence = rand(1, num_points); % Generates numbers between 0 and 1

% Plot the sequence
plot(random_sequence, '-o');
xlabel('Index');
ylabel('Random Value');
title('Sequence of Random Numbers');
grid on;