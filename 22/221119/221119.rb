def A(n)
  p ary = [1]
  (n - 1).times{
    p a = ary.uniq.sort.map{|i| ary.count(i)}
    ary += a
  }
  ary
end

A(20)