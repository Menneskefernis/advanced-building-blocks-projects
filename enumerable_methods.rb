module Enumerable
    def my_each
        i = 0

        while i < self.size
            yield(self[i])
            i += 1
        end
        self
    end

    def my_each_with_index
        i = 0

        while i < self.size
            yield(self[i], i)
            i += 1
        end
        self
    end

    def my_select
        selected_items = []

        self.my_each do |item|
            if yield(item)
                selected_items.push(item)
            end
        end
        selected_items
    end

    def my_all?
        self.my_each do |item|
            return false unless yield(item)
        end
        return true
    end

    def my_any?
        self.my_each do |item|
            return true if yield(item)
        end
        return false
    end

    def my_none?
        self.my_each do |item|
            return false if yield(item)
        end
        return true
    end

    def my_count

    end
end

array = [1, 8, 33, 740, 5, 26]

#array.my_each { |number| puts number * 2 }
#array.my_each_with_index { |number, i| puts "#{number} is at index #{i}" }
#puts array.my_select { |number| number > 10 }
#puts array.my_all? { |number| number < 100 }
#puts array.my_any? { |number| number > 100 }
puts array.my_none? { |number| number > 100 }