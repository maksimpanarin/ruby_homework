# 2. User has list with N values. Print last element of list [docs](https://apidock.com/ruby/Array/length)

list_of_values = [0,1,2,3,4,5,6,7,8,9,0]

# Option #1
p list_of_values.last

# Option #2
length = list_of_values.length

p list_of_values[length-1]

# Option #3
p list_of_values[-1]