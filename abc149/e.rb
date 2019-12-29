n, m = gets.chomp.split(' ').map{|i| i.to_i }
a = gets.chomp.split(' ').map{|i| i.to_i }.sort{|a, b| b <=> a}

# p a

parent = 0
sums = []

while parent < a.length
  sums.push(a[parent] * 2)
  a[(parent + 1) .. -1].each{|i|
    2.times{|t|
      sums.push(i + a[parent])
    }
  }
  parent += 1
end

sum = 0
# p sums.sort{|a, b| b <=> a }[0 .. (m - 1)]
sums.sort{|a, b| b <=> a }[0 .. (m - 1)].each{|i| sum += i }

puts sum
