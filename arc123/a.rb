a1, a2, a3 = gets.chomp.split(' ').map(&:to_i)

diff21 = a2 - a1
diff32 = a3 - a2

if diff21 > diff32
  puts (diff21 - diff32).abs
else
  karikata = (a3 - a1).abs
  if karikata % 2 == 0
    puts ([a1, a3].min + karikata / 2) - a2
  else
    puts ([a1, a3].min + karikata / 2 + 2) - a2
  end
end

