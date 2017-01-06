class TimeToString
	def time_to_string(time, offset)
		#hours,minutes,seconds = time.split(':').map {|s| s.to_i}
		hours,minutes,seconds = time.split(':').map(&:to_i)
		seconds = seconds + offset/1000
		if seconds >= 60 
			seconds = seconds-60
			minutes = minutes +1
		end
		
		if minutes >= 60
			minutes = minutes-60
			hours = hours +1
		end

		if hours >= 24
			hours = hours - 24
		end

		if seconds < 0
			seconds = 60 + seconds
			minutes = minutes -1
		end
	
		if minutes < 0
			minutes = 60 + minutes
			hours = hours - 1
		end

		if hours < 0
			hours = 24 + hours
		end

		puts [hours,minutes,seconds].map {|s| s.to_s.rjust(2,'0')}.join(':')
	end
end

TimeToString.new.time_to_string("12:21:23", 10000) #12:21:33
TimeToString.new.time_to_string("1:1:1", -10000) #23:59:50
TimeToString.new.time_to_string("12:59:59", 10000) #13:0:09
