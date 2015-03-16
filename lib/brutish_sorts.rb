class BrutishSorts
  require 'brutish_sorts/selection_sort'
  def self.selection_sort(array)
    pivot = 0
    for i in 0..array.length - 1
      pivot = SelectionSort.min_index(array,i)
      array = SelectionSort.swap(array,pivot,i)
    end
    array
  end

  def self.insertion_sort(array)
    tmp = 0
    0.upto(array.length - 1) do |a|
      a.downto(0) do |b|
        if b < (array.length - 1)
          if array[b + 1] < array[b]
            tmp = array[b]
            array[b] = array[b + 1]
            array[b + 1] = tmp
          end
        end
      end
    end
    array
  end

end