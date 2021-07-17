n, k = gets.chomp.split(' ').map(&:to_i)
c = gets.chomp.split(' ').map(&:to_i)

colors = {}
ccount = 0

k.times{|i|
  color = c[i]
  if colors[color].nil? || colors[color] == 0
    ccount += 1
    colors[color] = 1
  else
    colors[color] += 1
  end
}

# p [ccount, colors]

max = ccount

(n - k).times{|i|
  hi = i + 1
  oldcolor = c[hi - 1]
  tailcolor = c[hi + k - 1]

  colors[oldcolor] -= 1
  ccount -= 1 if colors[oldcolor] == 0

  if colors[tailcolor].nil? || colors[tailcolor] == 0
    ccount += 1
    colors[tailcolor] = 1
  else
    colors[tailcolor] += 1
  end

  max = ccount if max < ccount
  # p [ccount, colors]
}

puts max
