def A(n, k)
  ((n + 1) ** k).to_s(n)
end

(1..15).each{|i|
  p (2..36).map{|j| A(j, i)}
}