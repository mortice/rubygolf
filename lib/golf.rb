class Golf

  class << self
    def hole2 s
      s.split.sort_by {|x| x[1]}.join(" ")
    end

    def hole4 a
      a.map { |x|
      x.
      sub(/man\(.*\)/, 'hat(\0)').
      sub(/dog\([^)]*/, '\0(bone)').
      sub(/cat/, 'dead')
      }
    end

    def hole7 a
      s = a[0]
      e = a[0]
      o = []
      a << $_
      
      a[1..-1].each { |x|
      if x == e+1
        e = x
      else
        o << (s != e ? "#{s}-#{e}" : "#{s}")
        s = x
        e = x
      end
      }
      
      o
    end

    def hole1 a
      eval a.join '*'
    end

    def hole3 n
      eval (1..n).to_a.join '*'
    end

    def hole6 t
      a = []
      (1..t).each { |i|
        if i%15 == 0
          a << 'fizzbuzz'
        elsif i%3==0
          a << 'fizz'
        elsif i%5==0
          a << 'buzz'
        else
          a << i
        end
      }
      a
    end

    def hole8 t
      a = [1,1]
      (t-2).times { |i|
        a << (a[i+1] + a[i])
      }
      a
    end

		def hole5 a
			f = []
			0.upto(a.size-1) { |j|
				a.each_with_index do |i, index|
					f << a[index..index+j] unless index + j >= a.size
				end
      }
			f
		end

		def hole9 a
			n = 0
			z = Hash.new 0
			y = z.dup
			x = z.dup
			File.open(a) { |f|
				f.each { |l|
					v = l.split(",").map {|k| k.sub(/\s/, "").strip}
					z[v[0]] += 1
					y[v[1]] += 1 if v.size > 1
					x[v[2]] += 1 if v.size > 2
					n += 1
        }
      }
			t = z.sort {|a, b| a[1] <=> b[1]}.last
			if t[1] >= n / 2
				t[0]
			else
				t = y.map(&:first).sort
				t[0]
			end.strip
		end
	end
end
