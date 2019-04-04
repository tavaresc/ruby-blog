class BookInStock
	attr_reader :isbn, :price

	def initialize(isbn, price)
		@isbn = isbn
		@price = Float(price)
	end
end

def n_times(thing)
	lambda {|n| thing * n }
end

p1 = n_times(23)
# p p1.call(3)

def power_proc_generator
  value = 1
  #lambda { value += value }
  -> { value += value }
end

puts power_proc_generator.call
puts power_proc_generator.call
puts power_proc_generator.call

power_proc = power_proc_generator
puts power_proc.call
puts power_proc.call
puts power_proc.call

#puts power_proc.call
#puts power_proc.call
#puts power_proc.call
