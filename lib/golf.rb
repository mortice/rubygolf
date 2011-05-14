z=Golf={}
$i=0
eval 'a.inject :*

      a.split.sort_by {|x| x[1]} * " "

      hole1 2..a

      a.map { |x|
      x.
      sub(/man.*/, \'hat(\0)\').
      sub(/dog.[^)]*/, \'\0(bone)\').
      sub /cat/, "dead"
      }

      f = []
      s = a.size
      s.times { |j|
        s.times { |i|
          f << a[i..i+j] if i+j < s
        }
      }
      f

      (1..a).map { |i|
        i%15 == 0 ? "fizzbuzz" : i%3 == 0 ? "fizz" : i%5 == 0 ? "buzz" : i
      }

      a << s = e = a.shift
      o = []
      a.map { |x|
      if x == e+1
        e = x
      else
        o << (s != e ? "#{s}-#{e}" : "#{s}")
        s = e = x
      end
      }
      o

      o = [1,1]
      (a-2).times { |i|
        o << (o[i+1] + o[i])
      }
      o

      n = 0
      z = Hash.new 0
      y = z.dup
      x = z.dup
      File.readlines(a).map { |l|
        v = l.scan /\w+/
        z[v[0]] += 1
        y[v[1]] += 1 if v[1]
        x[v[2]] += 1 if v[2]
        n += 1
      }
      t = z.sort_by(&:last)[-1]
      (t[1] >= n/2 ? t : y.map(&:first).sort)[0].strip
'.split("

").map {|$k| $i += 1
				"def z.hole#$i a; #$k;	end" } * "\n"
