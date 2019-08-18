n, q = gets.chomp.split(' ').map{|i| i.to_i }
tree = [[]]
(n - 1).times{|i|
  an, bn = gets.chomp.split(' ').map{|j| j.to_i - 1 }
  tree[an] = [] if tree[an].nil?
  tree[bn] = [] if tree[bn].nil?
  tree[an].push(bn)
  # p [an, bn]
  # p tree
}

# p tree

def plus(index, x, tree, c) #, count)
  # p [index, c, count]
  # if count > 100
  #   exit 1
  # end
  c[index] += x
  children = tree[index]
  # p children
  if !children.nil? && children.length >= 1
    children.each{|j| plus(j, x, tree, c) } #, count + 1) }
  end
end

c = Array.new(n, 0)

q.times{|i|
  pj, x = gets.chomp.split(' ').map{|j| j.to_i }

  plus(pj - 1, x, tree, c) #, 0)
}

puts c.join(' ')
