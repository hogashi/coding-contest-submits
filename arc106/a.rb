n = gets.chomp.to_i

san = 3
go = 5

sans = {}
gos = {}

a = nil
count = 1
while san < n
  sans[san] = count
  san = san * 3
  count += 1
end

b = 1
while go < n
  psan = n - go
  unless sans[psan].nil?
    a = sans[psan]
    break
  end
  go = go * 5
  b += 1
end

if a.nil?
  puts '-1'
else
  puts "#{a} #{b}"
end
