N = 3*37*43*42307*116341;                                               
a(n) = sumdiv(n, d, d*eulerphi(n/d));                                   
if(Mod(1+a(N), N)==0, print("a(", N, ") + 1 = ", (1+a(N))/N, " * ", N, "."));

