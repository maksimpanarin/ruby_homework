# 13. Convert string into hex
string = '200'
string.to_i.to_s(16).upcase

# 14. Convert float into integer
float = 10.1
integer = float.to_i

# 15. Convert int to float
integer = 100
float = integer.to_f


# 16. Convert integer to boolean
# This method converts 0 to false and other numbers to true
# TODO: Please write this function in 1 string with ternary operator
def to_boolean (value)
    if value.zero?
        return false
    else
        return true
    end
end

# 17. Convert boolean to integer
boolean = true
class TrueClass; def to_i; 1; end; end
class FalseClass; def to_i; 0; end; end

# Strange realization of boolean for Ruby but correct =) Two different types for true and false instead of one like boolean.