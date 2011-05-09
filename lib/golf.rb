class Golf
  class << self
		def hole5(a)
			final = []
			a.each_with_index do |i, index|
				final << [i]
				1.upto(3) do |i|
					final << a[index..(index+i)] unless index + i >= a.size
				end
			end
			final.sort {|a, b| a[0] <=> b[0]}.sort {|a, b| a.size <=> b.size}
		end
	end	
end
