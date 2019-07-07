l, r = gets.chomp.split(' ').map{|i| i.to_i }

min = 2020
(r - l + 1).times{|i1|
  i = i1 + l
  (r - l + 1 - i1 - 1).times{|j1|
    j = i + j1 + 1
    im = i % 2019
    jm = j % 2019
    if im * jm == 0
      puts 0
      exit 0
    end
    mod = (im * jm) % 2019
    if mod < min
      min = mod
    end
  }
}

puts min

