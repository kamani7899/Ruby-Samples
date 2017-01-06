def who_says_what
	yield("babu", "Hello")
	yield("chandra", "go to hell")
end

who_says_what {|person, phrase| puts "#{person} says #{phrase}"}


raw_text = %{The problem breaks down into two parts. First, given some text
as a string, return a list of words. That sounds like an array. Then, build
a count for each distinct word. That sounds like a use for a hash---we can
index it with the word and use the corresponding entry to keep a count.}

def words_from_string(text)
	text.downcase.scan(/[\w']+/)
end

def count_frequency(word_list)
	count = Hash.new(0)
	word_list.each do |key|
		if count.has_key?(key)
			count[key] = count[key] +1 
		else
			count[key] = 1
		end
	end
	count
end

a =  words_from_string(raw_text)

counts = count_frequency(a)

sotred_counts = counts.sort_by{ |key, count| count }

sotred_counts.last(5).reverse.each {|pair| puts "#{pair[0]} repeats #{pair[1]} times"}

def fib(num)
	i1,i2 = 1,1
	while i2 <= num
		yield(i1)
		i1, i2 = i2, i1+i2
	end
end

fib(20) {|n| p n }