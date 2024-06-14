class Array
    def swap(index)
        element = self[index]
        next_element = self[index + 1]
    
        self[index] = next_element
        self[index + 1] = element
    end
end

def bubble_sort(array)
    n = array.length
    loop do
        swapped = false
        
        array.each_with_index do |element, index|
            next_element = array[index + 1]
            
            unless next_element.nil?
                if element > next_element
                    array.swap(index)
                    swapped = true
                end
            end
            
        end
        
        break unless swapped
    end
    
    array
end

print bubble_sort([4,3,78,2,0,2]) # Expected: [0, 2, 2, 3, 4, 78]