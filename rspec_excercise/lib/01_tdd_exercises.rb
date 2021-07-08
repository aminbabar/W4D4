

def my_uniq(array)
    new_arr = []
    array.each { |ele| new_arr << ele unless new_arr.include?(ele) }
    new_arr
end

class Array

    def two_sum
    end

end