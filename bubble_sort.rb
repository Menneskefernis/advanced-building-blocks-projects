def bubble_sort(array)
    
    n = array.length
    iterations = 1
    swapped = true

    while swapped
        swapped = false

        (n - iterations).times do |i|
            if array[i] > array[i + 1]
                array[i], array[i + 1] = array[i + 1], array[i]
                swapped = true
            end
        end
    
        iterations += 1
    end

    return array
end






def bubble_sort_by(array)
    n = array.length
    iterations = 1
    swapped = true

    while swapped
        swapped = false

        (n - iterations).times do |i|
    
            if yield(array[i], array[i + 1]) > 0
                array[i], array[i + 1] = array[i + 1], array[i]
                swapped = true
            end
        end
        
        iterations += 1
    end

    array
end

sorted_array = bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length - right.length
end

puts sorted_array

#puts bubble_sort([6,8,4,9,2,5])