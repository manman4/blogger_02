K=10;

my_besseli(n, x) = besseli(n, x)*(x/2)^n/n!;

for(k=0, K, print([k, besseli(k, 2*x)]));

print;

for(k=0, K, print([k, my_besseli(k, 2*x)]));