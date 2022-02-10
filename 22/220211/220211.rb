def ncr(n, r)
  return 1 if r == 0
  (n - r + 1..n).inject(:*) / (1..r).inject(:*)
end

def A(n)
  (0..n).map{|i| (0..i / 2).map{|j| ncr(i - j, j)}.inject(:+)}
end

def A010754(n)
  (0..n).map{|i| (0..i / 2 / 2).map{|j| ncr(i - j, j)}.inject(:+)}
end

def A010755(n)
  (0..n).map{|i| (0..(i / 2 - 1) / 2).map{|j| ncr(i - j, j)}.inject(:+).to_i}
end

n = 50
p A(n)
p A010754(n)
p A010755(n)