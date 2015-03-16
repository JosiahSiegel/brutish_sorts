require 'brutish_sorts/core'
require 'brutish_sorts/selection_sort'

module BrutishSorts
  extend self

  def selection_sort(array)
    dup = array.dup
    pivot = 0
    for i in 0..dup.length - 1
      pivot = SelectionSort.min_index(dup,i)
      dup = SelectionSort.swap(dup,pivot,i)
    end
    dup
  end

  def insertion_sort(array)
    dup = array.dup
    tmp = 0
    0.upto(dup.length - 1) do |a|
      a.downto(0) do |b|
        if b < (dup.length - 1)
          if dup[b + 1] < dup[b]
            tmp = dup[b]
            dup[b] = dup[b + 1]
            dup[b + 1] = tmp
          end
        end
      end
    end
    dup
  end

end