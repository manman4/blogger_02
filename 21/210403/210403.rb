def ncr(n, r)
  return 1 if r == 0
  (n - r + 1..n).inject(:*) / (1..r).inject(:*)
end

# generalized binomial coefficient (n,r)_m
def g_ncr_m(n, r, m = 1)
  # to_rとto_iは念のため
  (1..r).inject(1){|s, i| s * ncr(n - i + m, m) / ncr(i - 1 + m, m).to_r}.to_i
end

n = 10
(0..n).each{|i|
  p [i, (0..5).map{|j| g_ncr_m(i + j, i, i)}]
}
