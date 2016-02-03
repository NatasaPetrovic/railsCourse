# Hash
my_details = {'name' => 'nata', 'favcolor' => 'red'}
puts my_details['favcolor']
myhash = {a: 1, b: 2, c: 3}
puts myhash[:c]
myhash[:d] = 7
puts myhash[:d]

puts myhash
myhash[:name] = "Nata"
puts myhash[:name]

myhash.delete(:d)

numbers = {a: 1, b: 2, c: 3, d: 4 }

numbers.each {|k, v| puts v}
numbers.each {|k, v| puts "Key: #{k}, value: #{v}"} 
numbers.each {|k, v| numbers.delete(k) if v>3}

puts numbers

puts numbers.select {|k,v| v.odd?}
