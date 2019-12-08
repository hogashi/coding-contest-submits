s = gets.chomp.split('')
half = (s.length - (s.length % 2)) / 2
s1 = s[0 .. half - 1]
s2 = s[half .. s.length - 1].reverse

hug = 0
half.times{|i|
  if s1[i] != s2[i]
    hug += 1
  end
}
puts hug
