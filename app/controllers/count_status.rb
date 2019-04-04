require_relative "words_from_string"
require_relative "count_frequency"

raw_text = %{The problem breaks down into two parts. First, given some text
as a string, return a list of words. That sounds like an array. Then, build
a count for each distinct word. That sounds like a use for a hash---we can
index it with the word and use the corresponding entry to keep a count.}

word_list = words_from_string(raw_text)
counts = count_frequency(word_list)
sorted = counts.sort_by {|word, count| count}
top_five = sorted.last(5)

# write output
puts "With map: \n"
result_map = top_five.map { |word, count| puts "#{word}: #{count}" }
p result_map

puts "\nWith each:\n"
result_each = top_five.each { |word, count| puts "#{word}: #{count}" }
p result_each

puts "\nWith collect:\n"
result_collect = top_five.collect { |word, count| puts "#{word}: #{count}" }
p result_collect