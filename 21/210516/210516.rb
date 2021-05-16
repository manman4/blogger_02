# polygonal number
def p_k(k, n)
  n * ((k - 2) * n - k + 4) / 2
end

# Sum_{j=1..n} p_k(k, j)
def q_k(k, n)
  (1..n).inject(0){|s, i| s + p_k(k, i)}
end

def f(k, m, n)
  p k
  p [m, q_k(k, m)]
  p [n, p_k(k, n)]
end

f(4, 24, 70)
f(8, 10, 19)
f(8, 18, 45)
f(31265, 259, 2407)