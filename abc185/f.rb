n, q = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)

q.times{|i|
  ti, xi, yi = gets.chomp.split(' ').map(&:to_i)

  if ti == 1
    a[xi - 1] ^= yi
  else
    xor = a[xi - 1]
    a[xi .. yi - 1].each{|j|
      xor ^= j
    }
    puts xor
  end
}
