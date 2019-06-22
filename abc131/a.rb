his = nil
gob = 'Good'
s = gets.chomp.split('').map{|i|
  if his == i
    gob = 'Bad'
    break;
  end
  his = i
}
puts gob

