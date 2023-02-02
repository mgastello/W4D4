require 'rspec' 
require 'tdd_projects'

describe Array do

    describe '#my_uniq' do
        it 'removes duplicate elements' do
            arr = Array.new([1, 2, 1, 3, 3])
            expect(arr.my_uniq).to eq([1, 2, 3])
        end
    end

    describe '#two_sum' do
        it 'returns an array of pair indices that sum to zero' do
            arr = Array.new([-1, 0, 2, -2, 1])
            expect(arr.two_sum).to eq([[0, 4], [2, 3]])

        end


    end

end