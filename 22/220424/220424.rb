def A(k, n)
  (1..n).to_a.join.to_i(k)
end

def B(k, n)
  (k - n..k - 1).to_a.reverse.join.to_i(k)
end

(2..10).each{|i| 
  (1..i - 1).each{|j|
    a = A(i, j)
    b = B(i, j)
    puts "#{b} = #{a} * #{i - 2} + #{b - a * (i - 2)}"
  }
  p ""
}
