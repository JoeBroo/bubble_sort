def bubble_sort(numbers)

    numbers_length = numbers.size 

    #Return list of numbers if list of numbers contains less than 2 numbers 
    return numbers if numbers_length <= 1

    loop do
        #Keep track of whether numbers were swapped or not
        swapped = false

        (numbers_length - 1).times do |i|

            #If current_num > next_num
            if numbers[i] > numbers[i + 1]

                #Swap current_num and next_num positions in list of numbers
                numbers[i], numbers[i + 1] = numbers[i + 1], numbers[i]
            
                swapped = true
            end
        end

        break if not swapped 
    end

    puts "Numbers are sorted: #{numbers}"
end

bubble_sort([4,3,78,2,0,2])