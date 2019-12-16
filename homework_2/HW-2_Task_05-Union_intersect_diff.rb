# 5. There are 2 sets exists. Please print results of next operations: union, intersect, difference
# [docs](https://ruby-doc.org/stdlib-2.6.5/libdoc/set/rdoc/Set.html)

require 'set'

a = Set['a','b','c']
b = Set[1,2,'a']

p union = a | b
p intersect = a & b
p difference = a - b
