def A106108(n)
  ary = [7]
  (2..n).each{|i| ary << ary[-1] + i.gcd(ary[-1])}
  ary
end

def A132199(n)
  ary = A106108(n + 1)
  (1..n).map{|i| ary[i] - ary[i - 1]}
end

n = 100
p A132199(n)
