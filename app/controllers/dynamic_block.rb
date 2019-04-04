print "(t)imes or (p)lus: "
operator = gets
print "number: "
number = Integer(gets)

if operator =~ /^t/
	calc = lambda {|n| n*number }
else
	calc = lambda {|n| n+number }
end

puts((1..10).collect(&calc).join(", "))

inst_section = {
	cello: 'string',
	clarinet: 'woodwind',
	drum: 'percussion',
	oboe: 'woodwind',
	trumpet: 'brass',
	violin: 'string'
}

def method_name
	p "Hello"
end

puts "An oboe is a #{inst_section[:oboe]} instrument"