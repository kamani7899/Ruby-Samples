require 'csv'
class BookInStock 
	attr_reader :isbn, :price

	def initialize(isbn, price)
		@isbn = isbn
		@price = Float(price)
	end
end


class ReadFromCSV

	def initialize
		@books_in_stock = []
	end
	def read(csv_file_name)
		CSV.foreach(csv_file_name, headers: true) do |row|
			@books_in_stock << BookInStock.new(row["ISBN"], row["Price"])
		end
	end

	def read_in_csv_data(csv_file_name)
		CSV.foreach(csv_file_name, headers: true) do |row|
			puts "values from file are #{row["ISBN"]} and #{row["Price"]}"
		@books_in_stock << BookInStock.new(row["ISBN"], row["Price"])
		end
	end

	def total_price
		sum = 0.0
		@books_in_stock.each {|book| sum = sum + book.price }
		sum
	end
end

reader = ReadFromCSV.new

ARGV.each do |file_name|
	puts "processing the CSV #{file_name}"
	reader.read_in_csv_data(file_name)
end

puts "Total value = #{reader.total_price}"

