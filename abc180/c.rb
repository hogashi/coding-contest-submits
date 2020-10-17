n = gets.chomp.to_i
sqrtn = Math.sqrt(n).floor

y = []

sqrtn.times{|i|
  ii = i + 1
  sho = n / ii
  if ii * sho == n
    if ii == sho
      y.push(sho)
    else
      y.push(ii, sho)
    end
  end
}

puts y.sort
