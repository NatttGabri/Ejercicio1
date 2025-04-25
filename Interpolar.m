% Datos originales
x = [0, 1, 2, 3, 4];
y = [0, 1, 0.5, 2, 1.5];

% Puntos de interpolación
xi = linspace(0, 4, 100);

% Interpolación lineal y spline
yi_linear = interp1(x, y, xi, 'linear');
yi_spline = interp1(x, y, xi, 'spline');

% Graficar interpolaciones
figure;
plot(x, y, 'ko', 'MarkerFaceColor', 'k'); hold on;
plot(xi, yi_linear, '--b', 'LineWidth', 1.5);
plot(xi, yi_spline, '-r', 'LineWidth', 1.5);
legend('Datos', 'Interpolación Lineal', 'Spline Cúbico');
title('Interpolación sin punto extra');
xlabel('x');
ylabel('y');
grid on;
hold off;

%% Ahora agregamos el nuevo punto (2.5, 1.8)
x2 = [0, 1, 2, 2.5, 3, 4];
y2 = [0, 1, 0.5, 1.8, 2, 1.5];

% Nuevos puntos de interpolación
xi2 = linspace(0, 4, 100);

% Nuevas interpolaciones
yi2_linear = interp1(x2, y2, xi2, 'linear');
yi2_spline = interp1(x2, y2, xi2, 'spline');

% Graficar interpolaciones con el nuevo punto
figure;
plot(x2, y2, 'ko', 'MarkerFaceColor', 'k'); hold on;
plot(xi2, yi2_linear, '--b', 'LineWidth', 1.5);
plot(xi2, yi2_spline, '-r', 'LineWidth', 1.5);
legend('Datos con (2.5, 1.8)', 'Interpolación Lineal', 'Spline Cúbico');
title('Interpolación con punto (2.5, 1.8)');
xlabel('x');
ylabel('y');
grid on;
hold off;
