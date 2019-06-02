n, a, b, c, d = gets.chomp.split(' ').map{|i| i.to_i }
s = gets.chomp

a -= 1
b -= 1
c -= 1
d -= 1
success = true
if c < d
  sub_ac = s[a..c]
  sub_bd = s[b..d]
  #p sub_ac
  #p sub_bd
  success = false if sub_ac.match(/##/)
  success = false if sub_bd.match(/##/)
else
  sub_ac = s[a..c]
  sub_bd = s[b..d]
  sub_bd1 = s[b - 1..d + 1]
  #p sub_ac
  #p sub_bd
  #p sub_bd1
  success = false if sub_ac.match(/##/)
  success = false if sub_bd.match(/##/)
  success = false if !sub_bd1.match(/\.\.\./)
end

puts success ? 'Yes' : 'No'

