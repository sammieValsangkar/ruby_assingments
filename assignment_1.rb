string_1 = "i am learning Ruby language."
string_2 = "why? Coz it's cool and I like it."

puts "Q1. Make string_1 capital case(not uppercase)"
puts "Output=> #{string_1.capitalize}"


puts "Q2. Make string_1 lower case"
puts "Output=> #{string_1.downcase}"

puts "Q3. Change the string_1's eace letter's case to opposite case."
puts "Output=> #{string_1.swapcase}"

puts "Q4. Print string_1's characters count"
puts "Output=> #{string_1.length}"

puts "Q4. Check if string_1 contains word ruby"
puts "Output=> #{(string_1.include? 'ruby') || (string_1.include? 'Ruby')}"

puts "Q4 Split string_2 by '?'"
puts "Output=> #{string_2.split('?')}"

puts "Q5 Concat string_1 and string_2"
str=string_1
str.concat(string_2)
puts "Output=> #{str}"

puts "Q6 Concatenated string, change from 'I' to 'We' and make capital case2"
str=str['i']='we'
str=str.gsub(/I/, 'we')
str=str.gsub('am', 'are')
puts "Output=> #{str.capitalize}"

puts "Q7 Convert string_1 to symbol"
puts "Output=> #{:string_1.class}"

puts "Q8 List methods available on strings"
puts "Output=> #{String.methods}"


puts "Q9 Print strings' length difference"
puts "Output=> #{string_1.length - string_2.length}"

puts "Q10 Convert `nil` to array, string, float."
puts "Output=> Array  #{nil.to_a}"
puts "Output=> Array  #{nil.to_s}"
puts "Output=> Array  #{nil.to_f}"

puts "Q11. Write a method which tells if number is even or odd?"

public def is_even?
  if(self.to_i.even?)
    puts "This is even number"
  else
    puts "This is not even number"
  end
end

public def is_odd?
  if(self.to_i.odd?)
    puts "This is odd number"
  else
    puts "This is not odd number"
  end
end

puts "Enter A number"
num=gets().chomp.to_i
puts "#{num.is_even?}"
puts "#{num.is_odd?}"

