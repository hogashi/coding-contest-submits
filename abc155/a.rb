a, b, c = gets.chomp.split(' ').map{|i| i.to_i }

if a == b
  if a != c
    puts 'Yes'
  else
    puts 'No'
  end
elsif b == c
  if a != c
    puts 'Yes'
  else
    puts 'No'
  end
elsif a == c
  if a != b
    puts 'Yes'
  else
    puts 'No'
  end
else
  puts 'No'
end
