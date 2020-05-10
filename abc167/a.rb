s = gets.chomp
t = gets.chomp
t0 = t[0 .. -2]

puts s == t0 ? 'Yes' : 'No'
