# 符号は無視
def stirling(n, k = 1)
  a = [1]
  p [0, a]
  n.times{|i|
    a << 0
    b = [0]
    (0..i).each{|j|
      if k == 2
        b[j + 1] = a[j] + (j + 1) * a[j + 1]
      else
        b[j + 1] = a[j] +       i * a[j + 1]
      end
    }
    a = b
    p [i + 1, a]
  }
end

n = 10
stirling(n)
p ""
stirling(n, 2)
