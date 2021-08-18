function [] = test_lagrange()
  
  % Suportul de interpolare
  n = 8; % Numarul de puncte din suportul de interpolare
  % n puncte random din intervalul [-10 10]
  x = sort((rand(1, n) - 0.5) * 20);
  y = (rand(1, n) - 0.5) * 20;
  
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

  legend('Lagrange', 'Suportul interpolarii');
  
endfunction