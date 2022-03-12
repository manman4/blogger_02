def f(n)
  return 1 if n < 2
  (1..n).inject(:*)
end

def ncr(n, r)
  return 1 if r == 0
  (n - r + 1..n).inject(:*) / (1..r).inject(:*)
end

def gf_to_egf(ary)
  (0..ary.size - 1).map{|i| f(i) * ary[i]}
end

def I(ary, n)
  a = [1]
  (0..n - 1).each{|i| a << -(0..i).inject(0){|s, j| s + ary[1 + i - j] * a[j]}}
  a
end

def I_egf(ary, n)
  a = [1]
  (1..n).each{|i| a << -(1..i).inject(0){|s, j| s + ncr(i, j) * ary[j] * a[-j]}}
  a
end

# ary[0] = 0として扱われる
def A_1(ary, n)
  a = [1] + (1..n).map{|i| -ary[i]}
  gf_to_egf(I(a, n))
end

# a[0] = 0として扱われる
def A_2(ary, n)
  a = gf_to_egf(ary)
  b = [1] + (1..n).map{|i| -a[i]}
  I_egf(b, n) 
end

def A000670_1(n)
  ary = (0..n).map{|i| 1r / f(i)}
  A_1(ary, n).map(&:to_i)
end

def A000670_2(n)
  ary = (0..n).map{|i| 1r / f(i)}
  A_2(ary, n).map(&:to_i)
end

def A006153_1(n)
  ary = [0] + (0..n).map{|i| 1r / f(i)}
  A_1(ary, n).map(&:to_i)
end

def A006153_2(n)
  ary = [0] + (0..n).map{|i| 1r / f(i)}
  A_2(ary, n).map(&:to_i)
end

n = 10
p A000670_1(n)
p A000670_2(n)
p A006153_1(n)
p A006153_2(n)
