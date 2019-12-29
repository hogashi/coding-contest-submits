n, m = gets.chomp.split(' ').map{|i| i.to_i }
a = gets.chomp.split(' ').map{|i| i.to_i }.sort{|a, b| b <=> a}

# p a

parent = 0
sums = []
count = 0

while parent < a.length
  index = sums.bsearch_index{|ii| ii > a[parent] * 2 }
  if index.nil?
    index = sums.length
  elsif index > 0
    index -= 1
  end
  sums.insert(index, a[parent] * 2)
  count += 1
  if count >= m
    sum = 0
    # p sums.sort{|a, b| b <=> a }[0 .. (m - 1)]
    sums.sort{|a, b| b <=> a }[0 .. (m - 1)].each{|i| sum += i }

    puts sum
    exit
  end
  a[(parent + 1) .. -1].each{|i|
    index = sums.bsearch_index{|ii| ii > a[parent] * 2 }
    if index.nil?
      index = sums.length
    elsif index > 0
      index -= 1
    end
    2.times{|t|
      sums.insert(index, i + a[parent])
      count += 1
      if count >= m
        sum = 0
        # p sums.sort{|a, b| b <=> a }[0 .. (m - 1)]
        sums.sort{|a, b| b <=> a }[0 .. (m - 1)].each{|i| sum += i }

        puts sum
        exit
      end
    }
  }
  parent += 1
end

sum = 0
# p sums.sort{|a, b| b <=> a }[0 .. (m - 1)]
sums.sort{|a, b| b <=> a }[0 .. (m - 1)].each{|i| sum += i }

puts sum
