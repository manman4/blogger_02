require 'prime'

def A020639(n)
  return 1 if n == 1
  Prime.each(n){|i|
    return i if n % i == 0
  }
end

def A137613(n)
  ary = []
  a, b = 5, 5
  while ary.size < n
    ary << b
    a += b - 1
    b = A020639(a)
  end
  ary
end

n = 100
p A137613(n)