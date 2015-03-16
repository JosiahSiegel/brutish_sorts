class SelectionSort
  
  def self.swap(array, pivot, index)
    temp = array[pivot]
    array[pivot] = array[index]
    array[index] = temp
    array
  end

  def self.min_index(array, start_index)
    min_value = array[start_index]
    min_index = start_index
    si_1 = start_index + 1

    for a in si_1..array.length - 1
      if array[a] < min_value
        min_index = a
        min_value = array[a]
      end
    end
    min_index
  end
end