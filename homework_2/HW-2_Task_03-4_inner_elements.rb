# 3. User has list with 10 elements. Print only 4 inner elements using list slices. [docs](https://apidock.com/ruby/v1_9_3_392/Array/slice)
# TODO: small issue(not for rework). Space should be present after comma before next number
elements = [0,1,2,3,4,5,6,7,8,9]

# Option #1
p elements[3..6]

#Option #2
length = elements.length
start_point = (length - 4)/2
end_point = -(start_point + 1)
p elements[start_point..end_point]