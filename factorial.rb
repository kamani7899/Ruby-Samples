class Fact
	def self.fact(n)
		if n == 1
			1
		else
			n * fact(n-1)
		end
	end
end
puts Fact.fact(5)