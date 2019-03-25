class BookInstock
	attr_reader :isbn
#	attr_accessor :price

	def initialize(isbn, price)
		@isbn = isbn
		@price = Float(price)
	end

#	def price_in_cents
#		Integer(price * 100 + 0.5)
#	end
#
#	def price_in_cents=(cents)
#		@price = cents / 100.0
#	end
#
#	def to_s
#		"ISBN: #{@isbn}, price: #{@price}"
#	end
end

book1 = BookInstock.new("isbn1", 32.53)
book2 = BookInstock.new("isbn2", 30)

puts book1
puts book2

puts "ISBN: #{book1.isbn}"
puts "price before: #{book1.price}"
#book1.price = book1.price * 0.75
# puts "price after reduction: #{book1.price}"

book1.price_in_cents = 3253
puts "Normal price = #{book1.price}"
puts "Price in cents = #{book1.price_in_cents}"