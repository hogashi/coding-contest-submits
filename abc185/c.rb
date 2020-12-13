el = gets.chomp.to_i
n = el - 1
k = 11

# n C k
k = n - k if (n - k) < k

ns = 1
ks = 1
k.times{|i|
  ns *= n - i
  ks *= k - i
}
c = ns / ks

puts c
