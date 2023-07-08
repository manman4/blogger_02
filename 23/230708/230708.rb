def f(n)
  return 1 if n < 2
  (1..n).inject(:*)
end

def A186690(n)
  s = 0
  (1..n).each{|i| s += i if n % i == 0 && (n / i) % 2 == 1}
  (-1) ** (n + 1) * s
end

def B(k, n)
  a = [0] + (1..n).map{|i| A186690(i)}
  a_ary = [1]
  (1..n).each{|i|
    m = f(i - 1)
    a_ary << (1..i).inject(0){|s, j| s + k * a[j] * a_ary[-j] * m / f(i - j)}
  }
  a_ary
end

n = 10
-25.step(25, 2){|i| p [i, B(i, n)]}