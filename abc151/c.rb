n, m = gets.chomp.split(' ').map{|i| i.to_i }
last_submits = []
ac = 0
pn = 0
m.times{|i|
  pp, s = gets.chomp.split(' ')
  pp = pp.to_i
  if last_submits[pp] != true
    is_ac = s[0] == 'A'
    last_submits[pp] = is_ac
    if is_ac == true
      ac += 1
    else
      pn += 1
    end
  end
}

puts "#{ac} #{pn}"
