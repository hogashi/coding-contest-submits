mod = 998244353

n, k = gets.chomp.split(' ').map(&:to_i)
sums = Array.new(k, 0)
gets.chomp.split(' ').each{|aai|
  ai = aai.to_i
  sums[0] += ai % mod
  aik = ai
  (k - 1).times{|ii|
    i = ii + 1
    aik = (aik * ai) % mod
    sums[i] += aik
  }
}

anss = []

nikos = [1, 1]
nis = 1

k.times{|i|
  anss[i] = ((n - nis) * sums[i]) % mod
  nis *= 2

  # p ['1', anss]

  index = 1
  (nikos - [1]).each{|j|
    # p [j, sums[index - 1], sums[(i + 1) - index - 1], (j * sums[index - 1] * sums[(i + 1) - index - 1]) % mod]
    anss[i] = anss[i] + (j * sums[index - 1] * sums[(i + 1) - index - 1]) / 2.0
    index += 1
    # p ['2', anss]
  }

  anss[i] = anss[i].to_i % mod

  # p ['3', anss]

  old = 0
  nikos = nikos.map{|niko|
    newn = old + niko
    old = niko
    newn
  } + [1]
}

puts anss
