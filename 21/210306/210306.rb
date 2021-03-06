def ncr(n, r)
  return 1 if r == 0
  (n - r + 1..n).inject(:*) / (1..r).inject(:*)
end

# n >= 0, m = 1 or 2
def chebyshev(n, m, k)
  if m == 2
    return (0..n).inject(0){|s, i| s + (2 * k - 2) ** i * ncr(n + 1 + i, 2 * i + 1)}
  elsif m == 1
    if n == 0
      return 1
    else
      return (n * (0..n).inject(0){|s, i| s + (2 * k - 2) ** i * ncr(n + i, 2 * i) / (n + i.to_r)}).to_i
    end
  end
end

K = 5
N = 9
(0..K).each{|k|
  p [k, (0..N).map{|i| chebyshev(i, 1, i + k)}]
}
(0..K).each{|k|
  p [k, (0..N).map{|i| chebyshev(i, 2, i + k)}]
}
