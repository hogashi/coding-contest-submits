n = gets.chomp.to_i
pp = gets.chomp.split(' ').map{|i| i.to_i }

sum = 0
fir = 0
sec = 0
(n - 1).times{|i|
  fir = pp[i]
  sec = 0

  (n - i - 1).times{|jj|
    j = jj + i + 1
    pj = pp[j]
    if pj > sec
      if pj > fir
        fir, sec = pj, fir
      else
        fir, sec = fir, pj
      end
    end
    # p [i, j, fir, sec]
    sum += sec
  }
}

puts sum
