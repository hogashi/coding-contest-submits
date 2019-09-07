n = gets.chomp.to_i
ss = gets.chomp.split(' ').map{|i| i.to_i }.sort{|a, b| b <=> a }

n.times{|i|
  start = 2 ** i
  goal = 2 * start - 1

  sa = ss[0 .. start - 1]
  sb = ss[start .. goal]
  # p '-----'
  # p sa
  # p sb
  start.times{|j|
    if sa[j] <= sb[j]
      puts 'No'
      exit 0
    end
  }
}

puts 'Yes'
