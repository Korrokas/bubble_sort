#test cases
bubble1 = [4, 3, 78, 2, 0, 2]
bubble2 = [2, 19, 7, 66, 94, 3]
bubble3 = [8, 7, 6, 5, 4, 3, 2, 1]

def bubble_sort(array)
    is_sorted = array.sort

    if array != is_sorted
        array.each_with_index do |num, index|
            if index < array.length - 1
                if num > array[index + 1]
                    array[index] = array[index + 1]
                    array[index + 1] = num
                end
            end
        end
        bubble_sort(array)
    else
        array
    end
end

bubble_sort(bubble1) #outputs [0, 2, 2, 3, 4, 78]
bubble_sort(bubble2) #outputs [2, 3, 7, 19, 66, 94]
bubble_sort(bubble3) #outputs [1, 2, 3, 4, 5, 6, 7, 8]