class Array
  def gcd
    self.inject{|a, b| a.gcd(b)}
  end
end

def A(k, m, n)
  s = 0
  (1..n).to_a.repeated_permutation(k){|perm|
    s += (perm + [n]).gcd ** m
  }
  s
end

n = 15
# i>=j
(1..4).each{|i|
  (1..i).each{|j|
    a = (1..n).map{|k| A(i, j, k)}
    b = (1..n).map{|k| A(j, i, k)}
    p [i, j, a] if a == b
  }
}
