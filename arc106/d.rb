mod = 998244353

n, k = gets.chomp.split(' ').map(&:to_i)
sums = Array.new(k, 0)
gets.chomp.split(' ').each{|aai|
  sums[0] += aai.to_i
  (k - 1).times{|ii|
    i = ii + 1
    sums[i] += (sums[i - 1] * sums[i - 1]) % mod
  }
}

anss = [(sums[0] * sums[0] / 2 - sums[0]) % mod]

nikos = [1, 1]

(k - 1).times{|ii|
  i = ii + 1
  anss[i] = (n - i - 1) * sums[i]

  index = 1
  (nikos - [1]).each{|j|
    anss[i] += j * sums[index] * sums[i - index]
  }

  old = 0
  nikos = nikos.map{|niko| old + niko } + [1]
}

puts anss
