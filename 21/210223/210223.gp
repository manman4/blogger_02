a341533(n, k) = round(sqrt(prod(a=1, n,   prod(b=1, k,   4*sin((2*a-1)*Pi/(2*n))^2+4*sin((2*b-1)*Pi/k)^2))));
a341738(n, k) = round(sqrt(prod(a=1, n,   prod(b=1, k-1, 4*sin((2*a-1)*Pi/(2*n))^2+4*sin(2*b*Pi/k)^2))));
a341739(n, k) = round(     prod(a=1, n-1, prod(b=1, k,   4*sin(a*Pi/n)^2          +4*sin((2*b-1)*Pi/(2*k))^2)));
T(n, k) = a341533(n, k)/2+a341738(n, k)+2*((k+1)%2)*a341739(n, ceil(k/2));

K=7;
for(n=2, 10, for(k=3, K, print1(T(n, k), ", ")); print)