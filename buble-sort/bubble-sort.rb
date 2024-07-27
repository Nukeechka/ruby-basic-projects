def bubble_sort(array)
  arr_size = array.length
  until arr_size <= 1
    new_temp = 0
    for i in 1..arr_size - 1 do
        if array[i - 1] > array[i]
          temp = array[i - 1]
          array[i - 1] = array[i]
          array[i] = temp
          new_temp = i
        end
        arr_size = new_temp
    end
  end
  return array
end

p bubble_sort([4,3,78,2,0,2])