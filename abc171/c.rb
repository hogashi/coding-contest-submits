n = gets.chomp.to_i
ab = '_abcdefghijklmnopqrstuvwxyz'

name = []

while n != 0
  amari = n % 26
  name.push(ab[amari])
  n = (n - amari) / 26
end

puts name.reverse.join('')
