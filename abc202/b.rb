puts gets.chomp.split('').map{|i|
  if i == '6'
    i = '9'
  elsif i == '9'
    i = '6'
  end
  i
}.reverse.join('')
