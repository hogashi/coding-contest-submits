n = gets.chomp.to_i
dn = 2 * n
dnr = Math.sqrt(dn).floor

count = 0
dnr.times{|ii|
  i = ii + 1

  sho = 1.0 * (dn + i * (1 - i)) / (2 * i)

  # p [i, sho, sho.floor, sho.floor == sho]

  if sho.floor == sho
    count += 2
  end
}

puts count
