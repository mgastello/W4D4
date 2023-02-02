class Array
    def my_uniq
        new_arr = []
        self.each do |ele|
            if !new_arr.include?(ele)
                new_arr << ele
            end
        end
        new_arr
    end

    def two_sum
        new_arr = []
        self.each_with_index do |num1, idx1|
            self.each_with_index do |num2, idx2|
                if num1 + num2 == 0 && idx2 > idx1
                    new_arr << [idx1, idx2]
                end
            end
        end
        new_arr
    end

    def my_transpose
        new_arr = Array.new(self.length) { [] }
        (0...self.length).each do |i|
            self.each do |row|
                new_arr[i] << row[i]
            end
        end

        new_arr
    end
end


def stock_picker(array)

    current_profit = 0
    pair = [0, 0]

    (0...array.length).each do |i|
        (i + 1...array.length).each do |j|
            if array[j] - array[i] > current_profit
                current_profit = array[j] - array[i]
                pair = [i, j]
            end

        end
    end
    pair
end

# p stock_picker('hello')
# p stock_picker([10, 5, 7, 20, 12, 1])
# p stock_picker(2)