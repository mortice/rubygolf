class Golf
  class << self
		def hole5(a)
			f = []
			0.upto(a.size-1) do |j|
				a.each_with_index do |i, index|
					f << a[index..index+j] unless index + j >= a.size
				end
			end
			f
		end
	end
end
