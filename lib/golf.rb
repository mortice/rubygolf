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

		def hole9(a)
			count = 0
			firsts = Hash.new(0)
			seconds = Hash.new(0)
			thirds = Hash.new(0)
			File.open(a) do |f|
				f.each_line do |v|
					vote = v.split(",").map {|k| k.sub(/\s/, "").strip}
					firsts[vote[0]] += 1
					seconds[vote[1]] += 1 if vote.size > 1
					thirds[vote[2]] += 1 if vote.size > 2
					count += 1
				end
			end
			top = firsts.sort {|a, b| a[1] <=> b[1]}.last
			if top[1] >= count / 2
				top[0].strip
			else
				top = seconds.sort {|a, b| a[1] <=> b[1]}.first
				top[0].strip
			end
		end
	end
end
