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
  anss[i] = (n - nis) * sums[i]
  nis *= 2

  p ['1', anss]

  index = 1
  nikosnow = nikos - [1]
  nikolen = nikosnow.length
  p [nikosnow, nikolen / 2 - 1, nikosnow[0 .. nikolen / 2 - 1]]
  if nikolen / 2 - 1 > 0
    nikosnow[0 .. nikolen / 2 - 1].each{|j|
      p [j, sums[index - 1], sums[(i + 1) - index - 1], (j * sums[index - 1] * sums[(i + 1) - index - 1]) % mod]
      anss[i] = (anss[i] + (j * sums[index - 1] * sums[(i + 1) - index - 1]) % mod) % mod
      index += 1
      p ['2', anss]
    }
  end
  anss[i] = (anss[i] + nikosnow[nikolen / 2] * sums[index - 1] * sums[(i + 1) - index - 1] / 2) % mod if nikolen % 2 == 1

  p ['3', anss]

  old = 0
  nikos = nikos.map{|niko|
    newn = old + niko
    old = niko
    newn
  } + [1]
}

puts anss
