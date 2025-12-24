N = 3*37*43*42307*116341;                                               
a(n) = sumdiv(n, d, d*eulerphi(n/d));                                   
if(Mod(a(N)+1, N)==0, print("a(", N, ") + 1 = ", (a(N)+1)/N, " * ", N, "."));

