n, x, y = gets.chomp.split(' ').map{|i| i.to_i }

ans = []

n.times{|k|
  maxmin = (n - 1) - (x - y - 1)
  if maxmin < k
    ans[k] = 0
  elsif maxmin == k
    ans[k] = 1
  elsif maxmin > k


    (n - 1).times{|i|
    j = i + k

    if j <= x || y <= i
      #  i-j x y  or  x y i-j
      ans[k] += 1
    elsif i <= x
      if (n - 1) - (x - y - 1) == k
        ans[k] += 1
      else

      #  i-x-y-j
      ans[k] += 1 if j - i - (x - y - 1)
      ## i----x--y----j
      ## i---x----y-j and i---x--j-y
      ## i---x---y-j
      if
    elsif i <= x && j < y
      #  i-x-j y
      if 1
        #  i----x-j y
      else
        #  i-x----j y
        ## i-x    j-y
        ##   \------/
      end
      ans[k]
    elsif i < y && y <= j
      #  x i-y-j
      if 1
        #  x    i-y-j
      else
        #  x i----y-j
        ## x-i    y-j
        ## \------/
      end
      ans[k]
    elsif i <= x && j < y
      #  x i-j y
      if 1
        #  x i-----j y
      else
        #  x   i-j   y
      end
      ans[k]
    end
  }
}


ans.push(0) # n - 1
puts ans.join(' ')
