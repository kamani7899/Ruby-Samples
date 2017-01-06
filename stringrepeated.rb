class StringRepeat
	def count(s)
		h = Hash.new(0)
		s.each_char do |a|
			if h.include?(a)
				h[a] = h[a]+1
			else
				h[a] = 1
			end
		end
		print h
	end
end
StringRepeat.new.count("saderfgasd")