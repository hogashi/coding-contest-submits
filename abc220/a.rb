a, b, c = gets.chomp.split(' ').map(&:to_i)

amari = a % c
cand = amari == 0 ? a : a - amari + c

puts cand > b ? -1 : cand
