function [] = test_splineC2_natural()
  
  % Suportul de interpolare
  x = [-3 0 2 5 7 11 14];
  y = [5 -3 1 3 8 4 -10];
  
  % Suport de interpolare - Logo MN
  % x = [0.526 1.617 2.583 3.550 4.547 5.389 6.387 7.384 8.382 9.286 10.315 11.344 12.217 12.996];
  % y = [0.177 5.165 8.782 9.654 6.163 6.069 8.782 5.227 0.800 13.146 7.877 5.165 9.654 15.017];

  % Grafic puncte + polinom de interpolare obtinut
  xx = linspace(min(x), max(x)); % Generare 100 de puncte intre min(x)si max(x)
  for i = 1 : 100
    yy(i) = splineC2_natural(x, y, xx(i)); % Calculare valoare in punctele xx
  endfor
  
  % Grafic spline C2
  plot(xx, yy);
  hold on;
  
  % Grafic punctele din suportul interpolarii
  plot(x, y, 'o');
  hold off;

  legend('Spline C2 natural', 'Suportul interpolarii', 'location', 'southwest');
  
endfunction