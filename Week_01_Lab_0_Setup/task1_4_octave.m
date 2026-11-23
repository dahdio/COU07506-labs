% COU 07506 Digital Signal Processing - Week 01 (Lab 0)
% Task 1.4: Elementary Discrete-Time Sequences in GNU Octave
% Student: DAUD SELEMANI DAUD | Reg No: 250242485225 | Class: BENG24COE-2

pkg load signal;

% Discrete-time index n from -5 to 10 (inclusive in Octave)
n = -5:10;

% Elementary sequences
delta = double(n == 0);          % Unit impulse \delta(n)
step  = double(n >= 0);          % Unit step u(n)
ramp  = n .* step;               % Unit ramp r(n) = n * u(n)
expo  = (0.8 .^ n) .* step;      % Real exponential (0.8)^n * u(n)

% Create figure and 1x4 subplots
hf = figure('visible', 'off', 'Position', [100, 100, 1300, 300]);

subplot(1, 4, 1);
stem(n, delta, 'filled', 'LineWidth', 1.2);
title('\delta(n) - Unit Impulse');
xlabel('n (samples)');
ylabel('Amplitude x(n)');
grid on;

subplot(1, 4, 2);
stem(n, step, 'filled', 'LineWidth', 1.2);
title('u(n) - Unit Step');
xlabel('n (samples)');
ylabel('Amplitude x(n)');
grid on;

subplot(1, 4, 3);
stem(n, ramp, 'filled', 'LineWidth', 1.2);
title('r(n) - Unit Ramp');
xlabel('n (samples)');
ylabel('Amplitude x(n)');
grid on;

subplot(1, 4, 4);
stem(n, expo, 'filled', 'LineWidth', 1.2);
title('(0.8)^n u(n) - Real Exponential');
xlabel('n (samples)');
ylabel('Amplitude x(n)');
grid on;

print(hf, 'task1_4_octave.png', '-dpng', '-r150');
disp('Task 1.4 Octave plot saved successfully to task1_4_octave.png');
