require_relative 'lib/test1'
class A
	def main_method
		puts "main_method"
		method1
	end
    def method1
    	puts "method 1"
    	B.new.Methodpub
    end
end

A.new.method1