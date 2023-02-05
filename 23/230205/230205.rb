def ncr(n, r)
  return 1 if r == 0
  (n - r + 1..n).inject(:*) / (1..r).inject(:*)
end

# f(x+1) - f(x) = (aryが表す多項式) を満たすf(x)を求める
def A(ary)
  a = []
  ary.size.downto(1){|i|
    b = ary[0] / i.to_r
    a << b
    (1..i).each{|j| ary[j - 1] -= b * ncr(i, j)}
    ary = ary[1..-1]
  }
  a
end

def B(n)
  # f(x+1) - f(x) = (1+x)^n
  (0..n).each{|i| p A((0..i).map{|j| ncr(i, j)})}
end

B(10)
