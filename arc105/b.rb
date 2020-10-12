n = gets.chomp.to_i
as = []
aset = {}
gets.chomp.split(' ').each{|ii|
  i = ii.to_i

  if aset[i].nil?
    as.push(i)
    aset[i] = true
  end
}

while as.length != 1
  a1 = as.pop
  a2 = as.pop

  while a1 != 0 && a2 != 0
    if a1 > a2
      a1 = a1 % a2
    else
      a2 = a2 % a1
    end
  end

  as.push(a1 + a2)
end

puts as[0]
