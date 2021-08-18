function [] = test_lagrange()
  
  % Suportul de interpolare
  x = [-3 0 2 5 7 11 14];
  y = [5 -3 1 3 8 4 -10];
  
  % Grafic puncte + polinom de interpolare obtinut
  xx = linspace(min(x), max(x)); % Generare 100 de puncte intre min(x)si max(x)
  for i = 1 : 100
    yy(i) = lagrange(x, y, xx(i)); % Calculare valoare in punctele xx
  endfor
  
  % Grafic polinom
  plot(xx, yy);
  hold on;
  
  % Grafic punctele din suportul interpolarii
  plot(x, y, 'o');
  hold off;

  legend('Lagrange', 'Suportul interpolarii', 'location', 'northwest');
  
endfunction
