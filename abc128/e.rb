n, q = gets.chomp.split(' ').map{|i| i.to_i }

s = []
t = []
x = []
d = []
n.times{|n1|
  s[n1], t[n1], x[n1] = gets.chomp.split(' ').map{|i| i.to_i }
}
q.times{|i|
  d[i] = gets.chomp.to_i
}

constructs = []
positions = []

t.max.times{|time|
  n.times{|i|
    constructs[i] = ((s[i] - 0.5) <= time && time <= (t[i] - 0.5))
  }
  q.times{|i|
    next if (d[i].nil? || time < d[i])
    positions[i] = 0 if positions[i].nil?
    n.times{|n1|
      d[i] = nil if constructs[n1] && positions[i] == x[n1]
    }
    positions[i] += 1
  }
  #p time
  #p constructs
  #p x
  #p d
  #p positions.map{|i| i - 1 }
}

q.times{|i|
  if !d[i].nil?
    puts -1
  else
    puts positions[i] - 1
  end
}

