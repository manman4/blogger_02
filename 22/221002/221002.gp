A(n) = my(N=15, x='x+O('x^N)); sum(k=1, N, binomial(n*k, k)*x^k/(n*k));
B(n) = exp(A(n));
C(n) = B(n)-x*exp(n*A(n));

for(n=1, 5, print(Vec(serlaplace(A(n)))))
for(n=1, 5, print(Vec(B(n))))
for(n=1, 5, print(C(n)))