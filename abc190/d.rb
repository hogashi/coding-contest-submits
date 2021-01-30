n = gets.chomp.to_i
nr = Math.sqrt(n).floor
dn = 2 * n

isodd = n % 2 == 1

count = 0
nr.times{|ii|
  i = ii + 1

  sho = 1.0 * (dn + i * (1 - i)) / (2 * i)

  if sho > 0
    p [i, sho, sho.floor, sho.floor == sho]

    if sho.floor == sho
      count += 2
    end
  else
    p [i, sho, sho.ceil, sho.ceil == sho]

    if sho.ceil == sho
      count += 1
    end
  end
}

puts count
