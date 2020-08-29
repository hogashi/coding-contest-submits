s = gets.chomp
t = gets.chomp
tlength = t.length

min = tlength
(s.length - tlength).times{|i|
  diff = tlength
  ss = s[i .. i + tlength - 1]
  tlength.times{|j|
    diff -= 1 if ss[j] == t[j]
  }

  min = diff if min > diff
}

puts min
