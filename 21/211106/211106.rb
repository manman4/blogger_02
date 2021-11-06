def A(k, n)
  i = (n * n).to_s(k)
  i == i.reverse
end

def B(k, n)
  m = 0
  cnt = 0
  ary = []
  while cnt < n
    if A(k, m)
      cnt += 1
      ary << m
    end
    m += 1
  end
  ary
end

n = 10
(2..36).each{|i|
  p [i, B(i, n)]
}
