class SubString
	def length_of_longest_substring(s)
		len = 0
	    s.split("").each_with_index do |a,i|
	    	s.split("").each_with_index do |b,j|
	    		if s[i..j].split("").uniq.length == s[i..j].length && s[i..j].length > len 
	    			len = s[i..j].length
	    		end
	    	end
	    end
	end
	def longest_of_longest_substring(s)
	    	len, str = 0, ""
	    	s.split("").each_with_index do |a,i|
	    	s.split("").each_with_index do |b,j|
	    		if s[i..j] == s[i..j].reverse && s[i..j].length > len
	    			len, str = s[i..j].length, s[i..j]
	    		end
	    	end
	    end
	    puts str
	end 
end

SubString.new.longest_of_longest_substring("ibvjkmpyzsifuxcabqqpahjdeuzaybqsrsmbfplxycsafogotliyvhxjtkrbzqxlyfwujzhkdafhebvsdhkkdbhlhmaoxmbkqiwiusngkbdhlvxdyvnjrzvxmukvdfobzlmvnbnilnsyrgoygfdzjlymhprcpxsnxpcafctikxxybcusgjwmfklkffehbvlhvxfiddznwumxosomfbgxoruoqrhezgsgidgcfzbtdftjxeahriirqgxbhicoxavquhbkaomrroghdnfkknyigsluqebaqrtcwgmlnvmxoagisdmsokeznjsnwpxygjjptvyjjkbmkxvlivinmpnpxgmmorkasebngirckqcawgevljplkkgextudqaodwqmfljljhrujoerycoojwwgtklypicgkyaboqjfivbeqdlonxeidgxsyzugkntoevwfuxovazcyayvwbcqswzhytlmtmrtwpikgacnpkbwgfmpavzyjoxughwhvlsxsgttbcyrlkaarngeoaldsdtjncivhcfsaohmdhgbwkuemcembmlwbwquxfaiukoqvzmgoeppieztdacvwngbkcxknbytvztodbfnjhbtwpjlzuajnlzfmmujhcggpdcwdquutdiubgcvnxvgspmfumeqrofewynizvynavjzkbpkuxxvkjujectdyfwygnfsukvzflcuxxzvxzravzznpxttduajhbsyiywpqunnarabcroljwcbdydagachbobkcvudkoddldaucwruobfylfhyvjuynjrosxczgjwudpxaqwnboxgxybnngxxhibesiaxkicinikzzmonftqkcudlzfzutplbycejmkpxcygsafzkgudy")