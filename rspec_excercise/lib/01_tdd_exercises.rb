

def my_uniq(array)
    new_arr = []
    array.each { |ele| new_arr << ele unless new_arr.include?(ele) }
    new_arr
end


require "byebug"


class Array

    def two_sum
        hash = {}
        new_arr = []
        self.each_with_index do |n, idx|
            hash[n] = idx
        end
        
        self.each_with_index do |ele, idx|
            if hash.has_key?(-ele) && ele != 0
                new_arr << [idx, hash[-ele]]
                hash.delete(ele)
            end
        end
        return new_arr
    end

end

def my_transpose(multi_arr)
    return [] if multi_arr.length == 0
    transpose = Array.new(multi_arr.length) { [] } 

    (0...multi_arr.length).each do |i|
        (0...multi_arr.length).each do |j|
            transpose[j] += [multi_arr[i][j]]
        end
    end
    transpose
end