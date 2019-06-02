n, a, b, c, d = gets.chomp.split(' ').map{|i| i.to_i }
s = gets.chomp

puts s

su = a
hu = b
success = true
while hu < d
  puts ' ' * (hu - 1) + 'h'
  if s[hu] == '#'
    if s[hu + 1] == '#'
      success = false
      break
    end
    hu += 2
    next
  end
  hu += 1
end
puts ' ' * (hu - 1) + 'h'
success = false if hu != d

if !success
  puts 'No'
  exit
end

while su < c
  puts ' ' * (su - 1) + 's'
  if s[su] == '#' || su + 1 == hu
    if s[su + 1] == '#' || su + 2 == hu
      success = false
      break
    end
    su += 2
    next
  end
  su += 1
end
puts ' ' * (su - 1) + 's'
success = false if su != c

puts success ? 'Yes' : 'No'

