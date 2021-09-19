def A(k, m, n)
  a, b = k, m
  ary = [k]
  (1..n).each{|i|
    a, b = b, (2 * i + 1) * b + i ** 2 * a
    ary << a
  }
  ary
end

n = 20
# A054765
p ary0 = A(0, 1, n)
# A012244
p ary1 = A(1, 1, n)
p (0..n).map{|i| 4 * ary0[i] / ary1[i].to_r}
