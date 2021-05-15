a1, a2, a3 = gets.chomp.split(' ').map(&:to_i).sort

puts (a3 - a2) == (a2 - a1) ? 'Yes' : 'No'
