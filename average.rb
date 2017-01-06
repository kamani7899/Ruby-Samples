class ScoreKeeper
	def initialize
		@total_score = @count = 0
	end
	def <<(score)
		@total_score += score
		@count += 1
	end
	def average
		Float(@total_score) / @count
	end
end

s = ScoreKeeper.new
s<<4
s<<6
s<<8
puts s.average