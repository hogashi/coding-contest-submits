n = gets.chomp.to_i
abckind = 3
abc = []
n.times{|i|
  abc[i] = gets.chomp.split(' ').map{ |e| e.to_i }
}

# p abc

dp = [-1, 0]

n.times{|i|
  max = [nil, 0]
  abckind.times{|j|
    # p ['dp', dp]
    if j != dp[0]
      cand = dp[1] + abc[i][j]
      max = [j, cand] if cand > max[1]
    end
  }
  # p ['max', max]
  dp = max
}
puts dp[1]
