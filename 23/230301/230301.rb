def A(n)
  i = ([5] * n + [6]).join.to_i
  j = ([4] * n + [5]).join.to_i
  puts "#{i}^2 - #{j}^2 = #{i * i - j * j}"
end

(0..10).each{|i| A(i)}