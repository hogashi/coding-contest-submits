n = gets.chomp.to_i
a = gets.chomp.split(' ').map{|i| i.to_i }

i = 0
count = 0
a.each{|ai|
  j = 0
  count += 1 unless a.any?{|aj|
    # p [count, i, j, ai, aj, ai > aj, ai % aj === 0, ai > aj && ai % aj === 0]
    j += 1
    if i === (j - 1)
      false
    else
      ai >= aj && ai % aj === 0
    end
  }
  i += 1
}

puts count
