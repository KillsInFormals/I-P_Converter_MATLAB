%% MATLAB Simulation of I/P Converter
clc; clear; close all;

%% Parameters
I_min = 4; I_max = 20;       % Input current range (mA)
P_min = 3; P_max = 15;       % Output pressure range (psi)
tau = 0.5;                   % Time constant (s) for actuator
I_step = 12;                  % Example step input (mA)

%% Linear Conversion
I_in = linspace(I_min, I_max, 9); % Discrete values like lab readings
P_linear = P_min + (I_in - I_min)/(I_max - I_min)*(P_max - P_min);

%% Create Table for Lab Report
T = table(I_in', P_linear', 'VariableNames', {'InputCurrent_mA','OutputPressure_psi'});
disp('I/P Conversion Table:');
disp(T);

%% Plot Linear Response
figure;
plot(I_in, P_linear, 'bo-', 'LineWidth',2, 'MarkerSize',8);
xlabel('Input Current (mA)');
ylabel('Output Pressure (psi)');
title('I/P Converter: Linear Response');
grid on;

%% Dynamic Simulation (First-Order Response)
t = 0:0.01:5;                % Time vector
P_final = P_min + (I_step - I_min)/(I_max - I_min)*(P_max - P_min);
P_dynamic = P_final * (1 - exp(-t/tau));

%% Plot Dynamic Response
figure;
plot(t, P_dynamic, 'r', 'LineWidth',2);
xlabel('Time (s)');
ylabel('Output Pressure (psi)');
title('I/P Converter: Dynamic Response to Step Input');
grid on;

%% Combined Plot
figure;
plot(I_in, P_linear, 'bo-', 'LineWidth',2, 'MarkerSize',8); hold on;
plot([I_step I_step], [0 P_final], 'k--', 'LineWidth',1.5);
plot(t + I_min, P_dynamic, 'r', 'LineWidth',2); % shift for comparison
xlabel('Input Current (mA)');
ylabel('Output Pressure (psi)');
title('I/P Converter: Linear vs Dynamic Response');
legend('Linear Mapping','Step Input','Dynamic Response');
grid on;
