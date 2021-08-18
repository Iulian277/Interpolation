function [P] = newton(x, y)
  % Input: 
  %        Coordonatele punctelor din suportul de interpolare (x, y)
  % Output:
  %        Polinomul de interpolare Newton (P)
  
  % Asigura dimensiunea (n, 1) pentru vectorii input 
  [n m] = size(x);
  if (n == 1) % Vector linie
    x = x';
    n = m;
  endif
  
  [p q] = size(y);
  if (p == 1) % Vector linie
    y = y';
    p = q;
  endif
  
  % Calculam recurent diferentele divizate (D)
  D = zeros(n, n);
  D(:, 1) = y;
  % TODO
  
  % Constructie polinom de interpolare Newton (P)
  P = [];
  P = D(n, n);
  % TODO
  for k = n-1 : -1 : 1
    % Hints:
      % poly(x(k)) - creeaza un polinom de gr 1 a carui radacina este x(k)
      % conv(P, poly(x(k))) - inmulteste cele 2 polinoame

  endfor
    
endfunction