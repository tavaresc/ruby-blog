require_relative "csv_reader"

reader = CsvReader.new

ARGV.each do |csv_filename|
	STDERR.puts "Processing #{csv_filename}"
	reader.read_in_csv_data(csv_filename)
end

puts "Total value = #{reader.total_value_in_stock}"