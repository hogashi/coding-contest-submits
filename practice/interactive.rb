class Main
  def initialize(n)
    @arr = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.slice(0, n).split('')
    @rel = {}
    @arr.each{|c|
      @rel[c] = {}
    }
    #p arr
  end

  def sortArr
    q(@arr)
  end

  def is_small(char)
    # ? A B => '>'
    return char == '>'
  end

  def expand(a, b)
    ab = @rel[a][b]
    @rel.keys.each{|k|
      if @rel[k][a] == ab && @rel[k][b].nil? then
        @rel[k][b] = ab
        @rel[b][k] = !ab
        return expand(k, b)
      elsif @rel[b][k] == ab && @rel[a][k].nil? then
        @rel[a][k] = ab
        @rel[k][a] = !ab
        return expand(a, k)
      end
    }
  end

  def q(all)
    if all.length <= 1
      return all
    end
    pivot = all.pop
    #p pivot
    #p all
    smalls = []
    larges = []
    all.each{|c|
      ret = @rel[pivot][c]
      if ret.nil? then
        puts "? #{pivot} #{c}"
        $stdin.flush
        $stdout.flush
        ret = is_small(gets.chomp)
        $stdin.flush
        $stdout.flush
        @rel[pivot][c] = ret
        @rel[c][pivot] = !ret
        #p @rel
        expand(pivot, c)
        #p @rel
      end
      if ret then
        smalls.push(c)
      else
        larges.push(c)
      end
    }
    #p smalls
    #p larges
    return q(smalls) + [pivot] + q(larges)
  end
end

nq = gets.chomp.split(' ')
n = nq[0].to_i
#q = nq[1].to_i

main = Main.new(n)
result = main.sortArr

#p count
#p arr
puts "! #{result.join('')}"

