n, s, d = gets.chomp.split(' ').map(&:to_i)

can_damage = 'No'

n.times{|i|
  x, y = gets.chomp.split(' ').map(&:to_i)

  if s > x && d < y
    can_damage = 'Yes'
    break
  end
}

puts can_damage
