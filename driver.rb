require_relative 'numbers'
class Driver
include Numbers
include Alphabets
def initialize
	puts "inside driver intialize method"
end
def mycons
	puts Numbers::Const
end
end

puts "///This is for Driver Class///"
puts Driver.new.sum(10)
puts Driver.new.sum(1000)


 
class DriverChildren <Driver
	def initialize
		super
	end
def word_count(s)
		h=Hash.new(0)
		s.downcase.scan(/[\w']+/).each do |i|
			if h.has_key?(i)
				h[i]+=3
			else
				h[i]=2

			end
		end
		return h.sort_by {|w,c| w}.first(2)
	end
	def mycons
		puts Numbers::Const+"gadu"
	end
	def mypros
		puts "inside Driverchildren mypros method"
	end
end

puts "///this is for Driver children class///"
puts DriverChildren.new.sum(10)
puts DriverChildren.new.sum(1000)
DriverChildren.new.mycons 
puts DriverChildren.new.word_count("this is chandrababu naidu kamani")
