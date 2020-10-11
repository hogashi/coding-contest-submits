a, b, c, d = gets.chomp.split(' ').map(&:to_i)

ab = a + b
cd = c + d
ac = a + c
bd = b + d
ad = a + d
bc = b + c
abc = ab + c
abd = ab + d
acd = ac + d
bcd = bc + d

if ab == cd || ac == bd || ad == bc || abc == d || abd == c || acd == b || bcd == a
  puts 'Yes'
else
  puts 'No'
end
