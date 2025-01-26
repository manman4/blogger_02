def f(n)
  return 1 if n == 0
  (1..n).inject(:*)
end

# m次以下を取り出す
def mul(f_ary, b_ary, m)
  s1, s2 = f_ary.size, b_ary.size
  ary = Array.new(s1 + s2 - 1, 0)
  (0..s1 - 1).each{|i|
    (0..s2 - 1).each{|j|
      ary[i + j] += f_ary[i] * b_ary[j]
    }
  }
  ary[0..m]
end

# m次以下を取り出す
def power(ary, n, m)
  return [1] if n == 0
  k = power(ary, n >> 1, m)
  k = mul(k, k, m)
  return k if n & 1 == 0
  return mul(k, ary, m)
end

# 符号は無視
def stirling(n, k, m = 1)
  return [1] + [0] * n if k == 0
  if m == 1
    ary = [0] + (1..n).map{|i| 1r / i}
  else
    ary = [0] + (1..n).map{|i| 1r / f(i)}
  end
  ary = power(ary, k, n)
  fk = f(k)
  (0..n).map{|i| (ary[i] * f(i) / fk).to_i}
end

n = 10
(0..10).each{|i| p [i, stirling(n, i)]}
p ""
(0..10).each{|i| p [i, stirling(n, i, 2)]}
