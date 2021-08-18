function [] = test_vandermonde()
  
  % Suportul de interpolare
  n = 15; % Numarul de puncte din suportul de interpolare
  % n puncte random din intervalul [-10 10]
  % x = (rand(1, n) - 0.5) * 20;
  % y = (rand(1, n) - 0.5) * 20;
  
  x = [1 2 3];
  y = [1 8 27];
  
  % Polinomul de interpolare
  P = vandermonde(x, y);
  
  % Verficare conditii polinom de interpolare
  for i = 1 : length(x)
    if ((polyval(P, x(i)) - y(i)) > 1e-2)
      printf("Polinomul de interpolare nu respecta conditiile\n");
      break; % Nu respecta, totusi contiuna cu graficul
      % return;
    endif
  endfor
  
  % Grafic puncte + polinom de interpolare obtinut
  xx = linspace(min(x), max(x)); % Generare 100 de puncte intre min(x)si max(x)
  yy = polyval(P, xx); % Evaluare polinom de interpolare in cele 100 de puncte
  
  % Grafic polinom
  plot(xx, yy);
  hold on;
  
  % Grafic punctele din suportul interpolarii
  plot(x, y, 'o');
  hold off;
  
  legend('Vandermonde', 'Suportul interpolarii');
 

endfunction