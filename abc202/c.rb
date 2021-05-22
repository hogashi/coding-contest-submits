n = gets.chomp.to_i

ah = {}

index = 0
a = gets.chomp.split(' ').map{|ii|
  i = ii.to_i
  ah[i] = [] if ah[i].nil?
  ah[i].push(index)
  index += 1
  i
}
b = gets.chomp.split(' ').map(&:to_i)
sum = 0
c = gets.chomp.split(' ').map{|ii|
  i = ii.to_i
  # b_{c_j}
  bcj = b[i - 1]

  sum += ah[bcj].length if ! bcj.nil? && ! ah[bcj].nil?

  i
}

puts sum
