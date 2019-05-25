n, m = gets.chomp.split(' ').map{|i| i.to_i }

l = []
r = []

m.times{|i|
  l[i], r[i] = gets.chomp.split(' ').map{|i| i.to_i }
}

ans = r.min - l.max + 1
if ans < 0 then
  puts 0
else
  puts ans
end

