s = gets.chomp.split('')
t = gets.chomp.split('')

count = 0

s.each_index{|i|
  count += 1 if s[i] != t[i]
}

puts count
