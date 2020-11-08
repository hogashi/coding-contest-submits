n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i).sort

gcd = 0
gcdd = 0

(a.last - 2).times{|ii|
  i = ii + 2
  gcddi = a.filter{|aa| aa % i == 0 }.length
  if gcdd < gcddi
    gcd = i
    gcdd = gcddi
    if gcddi == n
      break
    end
  end
}

puts gcd
