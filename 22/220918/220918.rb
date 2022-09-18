def A(x, y)
  m = y / x
  m += 1 if y % x > 0
  m
end

def B(n, a = [])
  return [1] if n == 1
  x, y = n.numerator, n.denominator
  return a if y == 1
  m = A(x, y)
  a << m
  x, y = (-y) % x, y * m
  n = x.to_r / y
  return B(n, a)
end

def show(a, b, ary)
  print "#{a}/#{b} = 1/#{ary[0]}"
  ary[1..-1].each{|i|
    print " + 1/#{i}"
  }
  puts
end

def C(n)
  (2..n).each{|i|
    max = 0
    m = 0
    ary = []
    (1..i - 1).each{|j|
      x = j.to_r / i
      a = B(x)
      b = a[-1]
      if max < b
        max = b
        m = j
        ary = a
      end
    }
    show(m, i, ary)
  }
end

n = 200
ary = C(n)