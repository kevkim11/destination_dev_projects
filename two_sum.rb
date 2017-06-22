
def two_sum?(arr, target_sum)
  unique_combinations = arr.combination(2).to_a
  unique_combinations.each do |i|

  end

end

arr = [0, 1, 5, 7]
two_sum?(arr, 6) # => should be true
two_sum?(arr, 10) # => should be false