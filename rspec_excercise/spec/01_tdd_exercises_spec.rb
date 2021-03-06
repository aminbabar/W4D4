require "rspec"
require "01_tdd_exercises"

describe "my_uniq" do 

    it "should accept an array as an arg" do 
        expect { my_uniq([1,1,2,2,3,3])}.to_not raise_error
    end

    it "should return an array of unique elements" do
        expect(my_uniq([1,1,2,2,3,3])).to eq([1,2,3])
    end

    it "elements of new array should have same order as array arg" do
        expect(my_uniq([1,1,2,2,3,3])).to_not eq([3,2,1])
    end
end


describe "Array#two_sum" do

    it "returns an array containing all pairs of positions where elements sum to zero" do
        expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
        expect([4,-2,7,2,-4].two_sum).to eq([[0, 4], [1, 3]])
    end

    it "returns sorted pairs dictionary wise" do
        expect([4,-2,7,2,-4].two_sum).to_not eq([[1, 3], [0, 4]])
    end
end

describe "#my_transpose" do

    it "switches the rows and columns of a matrix" do
        expect(my_transpose([

        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]

        ]) ).to eq([
        
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]

        ])
    end

    it "returns an empty array for empty input" do
        expect(my_transpose([])).to eq([])
    end

    # it "raises an error for one dimensional array" do 
    #     expect { my_transpose([1,2,3]) }.to raise_exception(TypeError)
    # end
end



describe "#stock_picker" do

    it "should accept an array an an arg" do
        expect { stock_picker([1.18, 2.25])}.to_not raise_error
    end


    it "should return the pair values with the greated positive difference" do
        expect(stock_picker([1,2,3,4,5])).to eq([0, 4])
    end




end