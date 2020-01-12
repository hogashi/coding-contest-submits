n, m = gets.chomp.split(' ').map{|i| i.to_i }
last_submits = []
ac = 0
pn = 0
pns = []
m.times{|i|
  pp, s = gets.chomp.split(' ')
  pp = pp.to_i
  if last_submits[pp].nil?
    if s[0] == 'A'
      last_submits[pp] = true
      ac += 1
      pn += pns[pp] unless pns[pp].nil?
    else
      pns[pp] = 0 if pns[pp].nil?
      pns[pp] += 1
    end
  end
}

puts "#{ac} #{pn}"
