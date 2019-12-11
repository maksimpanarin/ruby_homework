# 4. The user enters a string, remove all duplicate characters from the string and display a list with non-repeating 
#    characters. In this task you should check is character already was listed before. Take a look on hesh structure
#    with its unique keys while solving this task. [docs](https://apidock.com/ruby/Array/uniq)

non_repeated = []

p "Enter the string and press 'Enter':"
string = gets.chomp.split('')

new_string = string.uniq {|s|
  if string.count(s) == 1
    non_repeated << s
  end
}

p "The uniq line is:"
p new_string.join
p "The list of non_repeated characters:"
p non_repeated