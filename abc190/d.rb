n = gets.chomp.to_i

if n == 0
  puts 1
elsif n == 1
  puts 2
else

  isodd = n % 2 == 1

  nr = Math.sqrt(n).floor

  count = 0
  if isodd
    nr.times{|ii|
      i = ii + 1

      count += 2 if n % i == 0
    }
  else
    nr.times{|ii|
      i = ii + 1

      count += 1 if (n % i == 0) && ((i % 2 == 1) || ((n / i) % 2 == 1))
    }
  end

  puts count * 2
end
