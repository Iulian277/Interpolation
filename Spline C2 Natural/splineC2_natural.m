function y0 = splineC2_natural(x, y, x0)
  % Input: 
  %        Coordonatele punctelor din suportul de interpolare (x, y)
  %        Punctul x0 in care se doreste valoarea dupa interpolare
  % Output:
  %        Valoarea dorita (y0) in punctul x0

  % Asigura forma de vector coloana pentru vectorii de input
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
  y0 = 0;
  
  % Avem de rezolvat un sistem de forma A * x = b, unde A - 3diag
  % Setare lungime intervale: h(i) = x(i+1) - x(i)
  % TODO
  
  % Setare coeficienti a(i) (pentru spline-uri)
  % TODO
  
  % Setare coeficienti pentru vectorul de termeni liberi (g)
  for i = 2 : n - 1
    % TODO
  endfor
  
  % Setare cele 3 diagonale din matricea A
  % dd - Subdiagonala
  % TODO
  
  % aa - Diagonala principala
  for i = 2 : n-1
    % TODO
  endfor
  
  % cc - Supradiagonala
  % TODO
  
  % Rezolvare sistem A * x = b (A - 3diag)
  % TODO
  
  % =>  Coeficientii c(i) pentru fiecare spline
  
  % Calculam coeficientii ramasi (b(i), d(i)) pentru fiecare spline
  for i = 1 : n-1
    % Pentru 'd' - folosim relatia: c(j+1) = c(j) + 3*d(j)*h(j)
    % TODO
    
    % Pentru 'b' - folosim relatia: b(j+1) = b(j) + 2*c(j)*h(j) + 3*d(j)*h(j)^2
    % TODO
  endfor
  
  % Determinare subinterval [x(i), x(i+1)]
  % in care se afla x0 (puctul dorit)
  for i = 1 : n-1
    if((x(i) <= x0) && (x0 <= x(i+1)))
      % TODO
      % Hint: Pur si simplu, aplica formula de la forma generala
      % a spline-ului cubic cu a(i), b(i), c(i), d(i) determinati anterior
      
      break;
    endif
  endfor
  
endfunction
