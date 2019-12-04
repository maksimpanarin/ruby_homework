# 1. User enter float number. Round it to 0, 2, 5 values after comma [docs](https://apidock.com/ruby/Float/round)

print "Enter the the float number and press enter:"
value = gets.chomp.to_f

rounded_to_zero = value.round
rounded_to_two = value.round(2)
rounded_to_five = value.round(5)

puts "The number is: #{value} \n
The number rounded to 0: #{rounded_to_zero}
The number rounded to 2: #{rounded_to_two}
The number rounded to 5: #{rounded_to_five}"