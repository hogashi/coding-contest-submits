n = gets.chomp.to_i
akes = 0
tojis = 0
tojiake = []
n.times{|i|
  ake_count = 0
  toji_count = 0
  gets.chomp.split('').each{|v|
    if v == '('
      ake_count += 1
    else
      if ake_count > 0
        ake_count -= 1
      else
        toji_count += 1
      end
    end
  }

  if toji_count == 0
    akes += ake_count
  elsif ake_count == 0
    tojis += toji_count
  else
    tojiake.push([toji_count, ake_count])
  end
}

hiraki = akes

success = true
# p tojiake.sort{|a, b| (b[1] - b[0]) <=> (a[1] - a[0]) }
tojiake.sort{|a, b| (b[1] - b[0]) <=> (a[1] - a[0]) }.each{|i|
  hiraki -= i[0]
  if hiraki < 0
    success = false
    break
  end
  hiraki += i[1]
}
success = false if hiraki != tojis

puts success ? 'Yes' : 'No'
