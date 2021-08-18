function [P] = vandermonde(x, y)
  % Input: 
  %        Coordonatele punctelor din suportul de interpolare (x, y)
  % Output:
  %        Coeficientii polinomului de interpolare Vandermonde
  
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
  
  % Constructie matrice A (matrice Vandermonde)
  % TODO
  
  % Constructie vector coeficienti
  % TODO
  
  % Rezolvam sistemul A * P_coef = y
  % TODO
  % Hint: Output-ul este reprezentat de vectorul de coeficienti P (P_coef)
  
  
endfunction
