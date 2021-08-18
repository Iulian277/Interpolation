function [] = test_newton()
   
  % Suportul de interpolare
  x = [-3 0 2 5 7 11 14];
  y = [5 -3 1 3 8 4 -10];
  
  % Polinomul de interpolare
  P = newton(x, y);
  
  % Grafic puncte + polinom de interpolare obtinut
  xx = linspace(min(x), max(x)); % Generare 100 de puncte intre min(x)si max(x)
  yy = polyval(P, xx); % Evaluare polinom de interpolare in cele 100 de puncte
  
  % Grafic polinom
  plot(xx, yy);
  hold on;
  
  % Grafic punctele din suportul interpolarii
  plot(x, y, 'o');
  hold off;
  
  legend('Newton', 'Suportul interpolarii', 'location', 'northwest');
  
endfunction  
  
