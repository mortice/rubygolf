class Golf

  def self.hole1 a
    eval a.join '*'
  end

  def self.hole3 n
    eval (1..n).to_a.join '*'
  end

  def self.hole6 t
    a = []
    (1..t).each do |i|
      if i%3==0 && i%5==0
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

  def self.hole8 t
    a = [1,1]
    (t-2).times do |i|
      a << (a[i+1] + a[i])
    end
    a
  end

end
