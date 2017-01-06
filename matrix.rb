class Matrix
	def zero_it(number, matrix)
		columns = []
		matrix.each {|o| print o; puts "\n"}
		matrix.each_with_index do |m,i|
		  if m.include?(number)
			columns << m.index(number)
			new_arr = []
			m.count.times { new_arr<<0 }
			matrix[i]=new_arr
		  end
		end
		puts columns
		if columns.length >0
			columns.each do |c|
				matrix.each do |n|
				   n[c] = 0
				end
			end
		end
		puts "answer"
		matrix.each {|o| print o; puts "\n"}
	end
end
puts "one element match"
a = [1,2,3,4], [2,2,3,4], [2,3,9,4], [2,4,3,2]
Matrix.new.zero_it(9,a)
puts "two element match"
b = [1,2,3,4], [2,2,3,4], [2,3,9,4], [2,3,3,9]
Matrix.new.zero_it(9,b)
puts "three element match"
c = [1,2,3,4], [9,2,3,4], [2,3,9,4], [3,9,3,2]
Matrix.new.zero_it(9,c)
puts "four element match"
c = [1,1,1,9], [9,2,3,4], [2,3,9,4], [3,9,3,2]
Matrix.new.zero_it(9,c)
puts "7x4 element match"
c = [1,1,1,9,2,3,4], [9,2,3,4,1,2,3], [2,3,9,4,4,2,9], [3,9,1,4,5,3,2], [3,2,1,4,5,3,2], [3,2,1,4,5,3,2]
Matrix.new.zero_it(9,c)
