function [] = test_newton()
   
  % Suportul de interpolare
  n = 8; % Numarul de puncte din suportul de interpolare
  % n puncte random din intervalul [-10 10]
  x = sort((rand(1, n) - 0.5) * 20);
  y = (rand(1, n) - 0.5) * 20;
  
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
  
  legend('Newton', 'Suportul interpolarii');
  
endfunction  
  