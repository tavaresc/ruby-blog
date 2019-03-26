require 'csv'
require_relative 'book_in_stock'

class CsvReader
	def initialize
		@books_in_stock = []
	end

protected
	def read_in_csv_data(csv_filename)
		CSV.foreach(csv_filename, headers: true) do |row|
			@books_in_stock << BookInStock.new(row["ISBN"], row["Price"])
		end
	end

	def total_value_in_stock
		sum = 0
		@books_in_stock.each {|book| sum += book.price}
		(sum * 100 + 0.5) / 100
	end

	def number_of_each_isbn
		
	end
end