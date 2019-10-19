n, k = gets.chomp.split(' ').map{ |e| e.to_i }
h = gets.chomp.split(' ').map{ |e| e.to_i }

dp = [0]

(n - 1).times{|ii|
  i = ii + 1
  min = dp[i - 1] + (h[i - 1] - h[i]).abs
  kt = (i - 1) < (k - 1) ? i - 1 : k - 1
  kt.times{|jj|
    j = jj + 1
    cand = dp[i - j - 1] + (h[i - j - 1] - h[i]).abs
    min = cand if cand < min
  }
  dp.push(min)
}
puts dp.last
