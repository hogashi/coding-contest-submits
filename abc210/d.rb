h, w, c = gets.chomp.split(' ').map(&:to_i)
a = []
ar = []
h.times{|i|
  a[i] = gets.chomp.split(' ').map(&:to_i)
  ar[i] = a[i].reverse
}

dp = Array.new(h) {|i| Array.new(w, 0) }
xmin = 100000000000

[a, ar].map{|arr|
  dp[0][0] = arr[0][0]

  h.times{|i|
    w.times{|j|
      next if i == 0 && j == 0

      aij = arr[i][j]
      cand = []
      if i > 0
        cand.push(dp[i - 1][j] + c)
      end
      if j > 0
        cand.push(dp[i][j - 1] + c)
      end
      candmin = cand.min
      dp[i][j] = [candmin, aij].min

      xmin = candmin + aij if !candmin.nil? && xmin > (candmin + aij)
      # p dp
      # p xmin
    }
  }
}

puts xmin
