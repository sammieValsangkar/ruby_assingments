array_1 = [2, 4, 6, 8, 10]
array_2 = [1, 5, 6, 8, 11, 12]

hash_1 = {a: 'a', b: 'b', c: 'c', d: 'd', e: 'e'}
hash_2 = {x: '10', y: '20', z: '30'}

puts "1. Print 'Hello World' 10 times"
(1..10).each {  puts "hellow" }

puts " Print number from 30 to 40"
(30..40).each { |n| puts n }

puts "3. Comabine array_1 & array_2 and make elements it uniq"
arr =array_1 + array_2
arr.uniq
print arr

puts "\n"
puts "4. Combine array_1 & array_2 and keep only even elements"
arr =array_1 + array_2
print arr.select { |n| n.even? }
puts "\n"

puts "5. Combine array_1 & array_2 and delete elements if greater than 8"
print arr.reject { |n| n > 8 }

puts "array_1 make cubes of all elements and add them"
arr=array_1
arr.map! {|num| num ** 3}
puts arr.inject(:+)

puts "7. Combine array_1 & array_2 and find index of '8'"
arr =array_1 + array_2
#puts arr.index(8)
puts arr.size.times.select {|i| arr[i] == 8}

puts "8. array_1: add 5 to each element "
arr=array_1
arr.map! {|num| num + 5}
puts arr

puts "9. combine hash_1 & hash_2"
puts hsh = hash_1.merge(hash_2)

puts "10. replace values of hash_1 with elements from array_1"
h1=hash_1.each_with_index {|(k,v),index| hash_1[k]=array_1.at(index) }
puts h1

puts "11. Make sum of integer values of hash_2"
arr=hash_2.map { |k,v| v =  v.to_i }
puts arr.inject(:+)

puts "12. Make upcase of all values of hash_1"
hash_1.map { |k,v|  v.upcase }