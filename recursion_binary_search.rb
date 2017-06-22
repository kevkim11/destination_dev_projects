
arr = [1, 3, 4, 6, 10, 11, 16, 19]
arr2 = [6, 7, 8, 9, 10, 11, 14, 15, 17, 19, 22, 23, 25, 28, 30]

def bsearch1(array, target)
  # returns true if the target is present in the array, else nil
  mid = array.length/2
  middle_number = array[mid]
  if middle_number == target
    true
  elsif array.length == 1 && middle_number != target
    nil
  elsif middle_number < target
    bsearch1(array[mid..-1], target)
  else
    bsearch1(array[0...mid], target)
  end
end

def bsearch2(array, target, starting_index=0)
  # returns the position of target in the sorted array
  # if target is not present in the array, return nil
  mid = array.length/2
  middle_number = array[mid]
  if middle_number == target
    starting_index + mid
  elsif array.length == 1 && middle_number != target
    nil
  elsif middle_number < target
    starting_index += mid
    bsearch2(array[mid..-1], target, starting_index)
  else
    bsearch2(array[0...mid], target, starting_index)
  end
end

# p bsearch2(arr, 11)
p bsearch2(arr2, 23)
