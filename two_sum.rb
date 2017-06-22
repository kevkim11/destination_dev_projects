require 'benchmark'


def two_sum?(arr, target_sum)
  # sort so that you can get rid of all the numbers that are greater than the target_sum
  # arr.sort!
  # arr = arr[0..target_sum]

  unique_combinations = arr.combination(2).to_a
  unique_combinations.each do |i|
    sum1 = i.inject(0){|sum,x| sum + x }
    return true if sum1 == target_sum
  end
  false
end

def two_sum_efficient?(arr, target_sum)
  # sort so that you can get rid of all the numbers that are greater than the target_sum
  arr.sort!
  arr = arr[0..target_sum]

  unique_combinations = arr.combination(2).to_a
  unique_combinations.each do |i|
    sum1 = i.inject(0){|sum,x| sum + x }
    return true if sum1 == target_sum
  end
  false
end

ar10 = [
        10, 4, 6, 3, 11, 16, 19, 1, 100, 21, 49, 59, 21, 2, 1, 5, 3, 21, 22, 10, 64, 89, 100, 1, -10, 3, 8, 2, 1, 11, 12,
        10, 4, 6, 3, 11, 16, 19, 1, 100, 21, 49, 59, 21, 2, 1, 5, 3, 21, 22, 10, 64, 89, 100, 1, -10, 3, 8, 2, 1, 11, 12,
        10, 4, 6, 3, 11, 16, 19, 1, 100, 21, 49, 59, 21, 2, 1, 5, 3, 21, 22, 10, 64, 89, 100, 1, -10, 3, 8, 2, 1, 11, 12,
        10, 4, 6, 3, 11, 16, 19, 1, 100, 21, 49, 59, 21, 2, 1, 5, 3, 21, 22, 10, 64, 89, 100, 1, -10, 3, 8, 2, 1, 11, 12,
        10, 4, 6, 3, 11, 16, 19, 1, 100, 21, 49, 59, 21, 2, 1, 5, 3, 21, 22, 10, 64, 89, 100, 1, -10, 3, 8, 2, 1, 11, 12,
        10, 4, 6, 3, 11, 16, 19, 1, 100, 21, 49, 59, 21, 2, 1, 5, 3, 21, 22, 10, 64, 89, 100, 1, -10, 3, 8, 2, 1, 11, 12,
        10, 4, 6, 3, 11, 16, 19, 1, 100, 21, 49, 59, 21, 2, 1, 5, 3, 21, 22, 10, 64, 89, 100, 1, -10, 3, 8, 2, 1, 11, 12,
        10, 4, 6, 3, 11, 16, 19, 1, 100, 21, 49, 59, 21, 2, 1, 5, 3, 21, 22, 10, 64, 89, 100, 1, -10, 3, 8, 2, 1, 11, 12,
        10, 4, 6, 3, 11, 16, 19, 1, 100, 21, 49, 59, 21, 2, 1, 5, 3, 21, 22, 10, 64, 89, 100, 1, -10, 3, 8, 2, 1, 11, 12,
        10, 4, 6, 3, 11, 16, 19, 1, 100, 21, 49, 59, 21, 2, 1, 5, 3, 21, 22, 10, 64, 89, 100, 1, -10, 3, 8, 2, 1, 11, 12,
        10, 4, 6, 3, 11, 16, 19, 1, 100, 21, 49, 59, 21, 2, 1, 5, 3, 21, 22, 10, 64, 89, 100, 1, -10, 3, 8, 2, 1, 11, 12,
        10, 4, 6, 3, 11, 16, 19, 1, 100, 21, 49, 59, 21, 2, 1, 5, 3, 21, 22, 10, 64, 89, 100, 1, -10, 3, 8, 2, 1, 11, 12
        ]

ar1 = [1,2,1,1]
# p two_sum?(arr, 6) # => should be true
# p two_sum?(arr, 10) # => should be false
p two_sum?(ar10, 119) # => should be false

puts(Benchmark.measure {two_sum?(ar10, 119)})
puts(Benchmark.measure {two_sum_efficient?(ar10, 119) })

