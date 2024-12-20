def all_digits?(n)
  n.to_s.split('').uniq.size == 10
end

def b(n)
  k = 2
  while !all_digits?(k ** n)
    k += 1
  end
  k
end

n = 200
(2..n).each{|i|
  print i
  print ' '
  puts b(i)
}
