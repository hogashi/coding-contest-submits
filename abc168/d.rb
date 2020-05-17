n, m = gets.chomp.split(' ').map{|i| i.to_i }

a = []
b = []
# starts with 1
g = [[]]
m.times{|i|
  a[i], b[i] = gets.chomp.split(' ').map{|j| j.to_i }
  g[a[i]] = [] if g[a[i]].nil?
  g[a[i]].push(b[i])
  g[b[i]] = [] if g[b[i]].nil?
  g[b[i]].push(a[i])
}

# starts with 1
note = [nil, 0]
queue = [1]

while queue.length != 0 do
  nextqueue = []
  queue.each{|from|
    g[from].each{|to|
      # p [from, to, note[from], queue, nextqueue]
      if note[to].nil?
        note[to] = from
        nextqueue.push(to)
      end
    }
  }
  queue = nextqueue
end

puts 'Yes'
(n - 1).times{|i|
  puts note[i + 2]
}
