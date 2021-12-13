def A(n)
  ary = []
  (1..n).each{|i|
    (i + 1..n).each{|j|
      if i.gcd(j) == 1 && (i - j) % 2 > 0
        x, y, z = j * j, i * j, i * i
        b = y + y
        c = x + z 
        a = x - z
        ary << [a, b, c]
      end
    }
  }
  ary
end

n = 10
A(n).sort.each{|i| p i}
