def s(k, n)
  s = 0
  (1..n).each{|i| s += i if n % i == 0 && i % k == 0}
  s
end

def A(ary, n)
  a_ary = [1]
  a = [0] + (1..n).map{|i| ary.inject(0){|s, j| s + j[1] * s(j[0], i)}}
  (1..n).each{|i| a_ary << (1..i).inject(0){|s, j| s - a[j] * a_ary[-j]} / i}
  a_ary
end

n = 10
a = [5 ** 2 * 63, 5 ** 5 * 52, 5 ** 7 * 63, 5 ** 10 * 6, 5 ** 12]
ary = (0..4).map{|i| p [0] * i + A([[5, 6 * (i + 1)], [1, -6 * (i + 1) - 1]], n)}
(0..n).each{|i|
  print "#{(0..4).inject(0){|s, j| s + a[j] * ary[j][i]}} = "
  (0..4).each{|j|
    print " + " if j > 0
    print "#{a[j]} * #{ary[j][i]}"
  }
  puts
}