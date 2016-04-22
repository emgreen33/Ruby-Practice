def bubble_sort(array)
  finished = false
  until finished
    finished = true
    (array.length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        finished = false
      end
    end
  end

  array
end
