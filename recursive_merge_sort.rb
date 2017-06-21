# Two parts to merge sort
# 1) Split the list into it's smallest elements. Split as in cut in half.
# 2) Merge and sort the two sorted-arrays

ar = [1, 5, 7, 10, 11, 15, 25, 40]
ar2 = [2, 4, 5, 8, 20]
ar10 = [10, 4, 6, 3, 11, 16, 19, 1, 100, 21, 49, 59, 21, 2, 1, 5, 3]


def merge(ar1, ar2)
  # Takes in two sorted arrays, and merge sorts them and returns the new array
  ar3 = []
  while !ar1.empty? || !ar2.empty?
    # p ar3
    # p "ar1: #{ar1}"
    # p "ar2: #{ar2}"
    if ar1.empty?
      ar3 += ar2
      ar2 = []
    elsif ar2.empty?
      ar3 += ar1
      ar1 = []
    elsif ar1[0] < ar2[0]
      ar3.push(ar1.shift)
    else
      ar3.push(ar2.shift)
    end
  end
  return ar3
end

# p merge(ar, ar2)

def merge_sort(arr)
=begin
Continuously splits the array recursively.
When the recursion is finished, it'll return an array with one element and will start merging the
two arrays.
=end

  mid = arr.length/2
  if arr.length == 1
    arr
  else
    # Split
    a = arr[0...mid]
    b = arr[mid..-1]
    merge(merge_sort(a), merge_sort(b))
  end
end

p merge_sort(ar10)
