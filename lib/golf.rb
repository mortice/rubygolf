class Golf

  class << self
    def hole1 a
      eval a.join '*'
    end

    def hole3 n
      eval (1..n).to_a.join '*'
    end

    def hole6 t
      a = []
      (1..t).each do |i|
        if i%15 == 0
          a << 'fizzbuzz'
        elsif i%3==0
          a << 'fizz'
        elsif i%5==0
          a << 'buzz'
        else
          a << i
        end
      end
      a
    end

    def hole8 t
      a = [1,1]
      (t-2).times do |i|
        a << (a[i+1] + a[i])
      end
      a
    end

		def hole5 a
			f = []
			0.upto(a.size-1) do |j|
				a.each_with_index do |i, index|
					f << a[index..index+j] unless index + j >= a.size
				end
			end
			f
		end

		def hole9 a
			n = 0
			firsts = Hash.new 0
			seconds = Hash.new 0
			thirds = Hash.new 0
			File.open(a) do |f|
				f.each_line do |v|
					vote = v.split(",").map {|k| k.sub(/\s/, "").strip}
					firsts[vote[0]] += 1
					seconds[vote[1]] += 1 if vote.size > 1
					thirds[vote[2]] += 1 if vote.size > 2
					n += 1
				end
			end
			top = firsts.sort {|a, b| a[1] <=> b[1]}.last
			if top[1] >= n / 2
				top[0].strip
			else
				top = seconds.sort {|a, b| a[1] <=> b[1]}.first
				top[0].strip
			end
		end
	end
end
