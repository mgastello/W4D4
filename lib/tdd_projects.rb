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
