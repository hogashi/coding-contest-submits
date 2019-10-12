n = gets.chomp.to_i
abckind = 3
abc = []
n.times{|i|
  abc[i] = gets.chomp.split(' ').map{ |e| e.to_i }
}

# p ['abc', abc]

dp = abc[0]

# p ['dp', dp]

(n - 1).times{|ii|
  i = ii + 1
  newdp = [-1, -1, -1]
  abckind.times{|j|
    abckind.times{|k|
      if k != j && dp[j] != -1
        cand = dp[j] + abc[i][k]
        newdp[k] = cand if cand > newdp[k]
      end
      # p ['newdp', newdp]
    }
  }
  dp = newdp
  # p ['dp', dp]
}
max = 0
abckind.times{|i|
  max = dp[i] if dp[i] > max
}
puts max
