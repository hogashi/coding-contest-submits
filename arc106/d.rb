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

anss = [((n - 1) * sums[0]) % mod]

nikos = [1, 1]
nis = 2

(k - 1).times{|ii|
  i = ii + 1
  anss[i] = ((n - nis) * sums[i]) % mod
  nis *= 2

  index = 1
  (nikos - [1]).each{|j|
    anss[i] = (anss[i] + (j * ((sums[index] * sums[i - index]) % mod)) % mod) % mod
  }

  old = 0
  nikos = nikos.map{|niko| old + niko } + [1]
}

puts anss
