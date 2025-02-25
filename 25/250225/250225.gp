N=10;

a059297(n, k) = my(x='x+O('x^(n+1)), t='t+'t*O(t^(k+1))); n!*polcoef(polcoef(exp(t*x* exp(x)), n), k);
a185951(n, k) = my(x='x+O('x^(n+1)), t='t+'t*O(t^(k+1))); n!*polcoef(polcoef(exp(t*x*cosh(x)), n), k);
a136630(n, k) = my(x='x+O('x^(n+1)), t='t+'t*O(t^(k+1))); n!*polcoef(polcoef(exp(t  *sinh(x)), n), k);

for(n=0, N, for(k=0, n, print1(a059297(n, k),", ")); print)
for(n=0, N, for(k=0, n, print1(a185951(n, k),", ")); print)
for(n=0, N, for(k=0, n, print1(a136630(n, k),", ")); print)
