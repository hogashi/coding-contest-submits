n = gets.chomp.to_i

as = {}

gets.chomp.split(' ').each{|i|
  if as[i]
    puts 'No'
    exit
  end

  as[i] = true
}

puts 'Yes'
