def is_square(n)
  n == Math.sqrt(n).to_i ** 2
end

def A(n)
  a = Math.sqrt(n).ceil
  while !is_square(a * a - n)
    a += 1 
  end
  b = Math.sqrt(a * a - n).to_i
  c, d = a - b, a + b
  return [A(c), A(d)] if c > 1
  [d]
end

n = 200
3.step(2 * n - 1, 2){|i| p [i, A(i)]}
