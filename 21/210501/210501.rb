def f(n)
  return 1 if n < 2
  (1..n).inject(:*)
end

def ncr(n, r)
  return 1 if r == 0
  (n - r + 1..n).inject(:*) / (1..r).inject(:*)
end

def A(k, n)
  (0..k - 1).inject(0){|s, i| s + ncr(k - 1, i) / f(i + n).to_r}
end

n = 6
(1..n).each{|i|
  p [i, (1..i).map{|j| A(j, i)}]
}