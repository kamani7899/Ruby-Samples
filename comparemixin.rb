class Person
	include Comparable
	attr_reader :name
	def initialize(name)
		@name= name
	end

	def to_s
		puts "#{name}"
	end

	def <=>(other)
		self.name <=> other.name
	end
end

p1 = Person.new("babu")
p2 = Person.new("ram")
p3 = Person.new("kaka")

if p1 < p2
	puts "greater"
end

puts [p1,p2,p3].sort