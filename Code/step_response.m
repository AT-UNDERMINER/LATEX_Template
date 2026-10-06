% Step response of an underdamped second-order system
% Writes the results to Data/step_response.csv for plotting in LaTeX
zeta = 0.4;                 % Damping ratio
wn   = 10;                  % Natural frequency (rad/s)

sys = tf(wn^2, [1 2*zeta*wn wn^2]);
t   = (0:0.025:1)';
y   = step(sys, t);

T = table(t, ones(size(t)), y, 'VariableNames', {'time', 'input', 'output'});
writetable(T, '../Data/step_response.csv');
