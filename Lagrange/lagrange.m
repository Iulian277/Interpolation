function y0 = lagrange(x, y, x0)
  % Input: 
  %        Coordonatele punctelor din suportul de interpolare (x, y)
  %        Punctul (x0) in care dorim sa aflam valoarea dupa interpolare
  % Output:
  %        Valoarea (y0) in punctul dorit (x0)
  
  y0 = 0; % Valoarea polinomului Lagrange in punctul dorit x0
  L = ones(length(x), 1); % Multiplicator Lagrange
  
  % Calculare polinom de interpolare Lagrange
  for i = 1 : length(x)
    
    % Calculare multiplicator Lagrange
    % TODO
    
    
    % Actualizare valoare polinom Lagrange
    % TODO
    % Hint: y0 += ...
    
  endfor
  
endfunction
