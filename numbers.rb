module Numbers
	Const="babu"
	def sum(n)
		total=0
			(1..(n-1)).each do |i|
				if i%3==0 || i%5==0
					total+=i
				end
		    	end
		return total
	end
	
	def pri
		puts "inside pri method"
	end
end
module Alphabets
	def word_count(s)
		h=Hash.new(0)
		s.downcase.scan(/[\w']+/).each do |i|
			if h.has_key?(i)
				h[i]+=1
			else
				h[i]=1

			end
		end
		return h
	end
end

