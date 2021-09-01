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

n = 15
a = [7, 49]
ary = (0..1).map{|i| p [0] * i + A([[7, 4 * (i + 1) - 1], [1, -4 * (i + 1)]], n)}
(0..n).each{|i|
  print "#{(0..1).inject(0){|s, j| s + a[j] * ary[j][i]}} = "
  (0..1).each{|j|
    print " + " if j > 0
    print "#{a[j]} * #{ary[j][i]}"
  }
  puts
}
