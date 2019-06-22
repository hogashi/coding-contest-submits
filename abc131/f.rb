n = gets.chomp.to_i
points = {}
points_by_y = {}
n.times{|i|
  x, y = gets.chomp.split(' ').map{|ii| ii.to_i }
  points[x] = [] unless points[x]
  points[x].push(y)
  points_by_y[y] = [] unless points_by_y[y]
  points_by_y[y].push(x)
}

all_opes = 0
opes = 1
while opes != 0
  opes = 0
  points.keys.each{|k|
    next if points[k].length < 2

    x1 = k
    #p "x: #{x1}"

    (points[x1].length - 1).times{|i|
      y1 = points[x1][i]
      (points[x1].length - 1 - i).times{|ii|
        y2 = points[x1][i + ii + 1]

        #p "y1,2: #{y1}, #{y2}"
        #p "points_by_y1,2: #{points_by_y[y1]}, #{points_by_y[y2]}"
        [[y1, y2], [y2, y1]].each{|ys|
          (points_by_y[ys[0]] - points_by_y[ys[1]]).each{|x2|
            # add x2, y2
            opes += 1
            points[x2].push(ys[1])
            points_by_y[ys[1]].push(x2)

            #p "add: (#{x2}, #{ys[1]})"
          }
        }
      }
    }
  }
  all_opes += opes
end

puts all_opes

