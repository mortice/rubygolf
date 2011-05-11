c = '

      eval a.join "*"

      a.split.sort_by {|x| x[1]}.join(" ")

      eval (1..a).to_a.join "*"

      a.map { |x|
      x.
      sub(/man\(.*\)/, "hat(\\\\0)").
      sub(/dog\([^)]*/, "\\\\0(bone)").
      sub(/cat/, "dead")
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
        if i%15 == 0
          "fizzbuzz"
        elsif i%3==0
          "fizz"
        elsif i%5==0
          "buzz"
        else
          i
        end
      }

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

      o = [1,1]
      (a-2).times { |i|
        o << (o[i+1] + o[i])
      }
      o

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
      t = z.sort_by {|a| a[1]}.last
      if t[1] >= n / 2
        t[0]
      else
        t = y.map(&:first).sort
        t[0]
      end.strip
'.split "\n\n"

class Golf
end

10.times { |i|
  eval %{
    def Golf.hole#{i} a
      #{c[i]}
    end
  }
}
