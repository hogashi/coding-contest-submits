n, x = gets.chomp.split(' ').map(&:to_i)
v = []
pp = []
alc = 0
time = -1
n.times{|i|
  v[i], pp[i] = gets.chomp.split(' ').map(&:to_i)
  alc += v[i] * (pp[i] / 100.0)
  if alc > x
    time = i + 1
    break
  end
}

puts time
