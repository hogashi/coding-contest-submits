n = gets.chomp.to_i

nsqrt = Math.sqrt(n).to_i

count = 0
nsqrt.times{|ii|
  i = ii + 1

  count += 1 if "#{i}#{i}".to_i <= n
}

puts count
