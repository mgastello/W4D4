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

    describe '#my_transpose' do
        it 'converts between row oriented and column oriented representations of a matrix' do
            arr = Array.new([
                [0, 1, 2],
                [3, 4, 5],
                [6, 7 ,8]
            ])
            expect(arr.my_transpose).to eq([
                [0, 3, 6],
                [1, 4, 7],
                [2, 5, 8]
            ])
        end
    end
end