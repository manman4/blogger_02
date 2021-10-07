def A(m, n)
  ary = []
  (m..n).to_a.permutation{|i|
    if i[0] > 0
      j = i.join.to_i
      ary << j if j % 37 == 0
    end
  }
  ary
end

def show(ary, n)
  p ary.size
  # 小さいものをn個表示
  p ary[0..n - 1]
  # 大きいものをn個表示
  p ary[-n..-1]
end

n = 10
show(A(0, 9), n)
# もし1から9の数字だったら
show(A(1, 9), n)
