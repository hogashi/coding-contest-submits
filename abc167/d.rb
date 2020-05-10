n, k = gets.chomp.split(' ').map{|i| i.to_i }
now = 0
count = 0
visited = Array.new(n, false)
visitTime = Array.new(n, -1)
isEnd = false

a = gets.chomp.split(' ').map{|i| i.to_i - 1 }
while !visited[now]
  visited[now] = true
  visitTime[now] = count
  count += 1
  now = a[now]
  if count == k
    isEnd = true
    break
  end
end

if !isEnd
  prefix = visitTime[now]
  loop_count = count - prefix

  rest = k - prefix
  amari = rest % loop_count

  amari.times{|j|
    now = a[now]
  }
end

puts now + 1

