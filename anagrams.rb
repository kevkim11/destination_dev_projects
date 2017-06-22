require 'benchmark'

# * DIDN'T DO
# def first_anagram?(word1, word2)
# =begin
# https://math.stackexchange.com/questions/443774/how-to-calculate-the-different-combinations-possible
# =end
#   word1_array = word1.split("")
#   word1_combo = word1_array.permutation(word1_array.length).to_a
#   word2_array = word2.split("")
#   word2_combo = word2_array.split("").combination(word2_array.length).to_a
#   p "a"
# end

def second_anagram?(word1, word2)

  word1_array = word1.split('')
  word2_array = word2.split('')
  # master_copy = word1_array

  word1_array.each do |x|
    word2_array.each do |y|
      if x == y
        word1_array.delete(x)
      end
    end
  end
  # if master_copy.empty? ? true : false
  # end
  if word1_array.empty?
    true
  else
    false
  end
end

def third_anagram?(word1, word2)
  arr1 = word1.split("").sort!
  arr2 = word2.split("").sort!
  if arr1 == arr2
    true
  else
    false
  end
end

def score( array )
  # helper function for fourth_anagram
  hash = Hash.new(0)
  array.each{|key| hash[key] += 1}
  hash
end

def fourth_anagram?(word1, word2)
  hash1 = score(word1.split(""))
  hash2 = score(word2.split(""))
  if hash1 == hash2
    true
  else
    false
  end
end

#####################################################
word1 = "mississippimississippimississippimississippi"
word2 = "miiiissssppmississippimississippimiiiisssspp"


puts(Benchmark.measure {second_anagram?(word1, word2) })
puts Benchmark.measure {third_anagram?(word1,  word2) }
puts Benchmark.measure {fourth_anagram?(word1, word2) }

# anagram?("hello", "hola")    #=> false
# anagram?("program", "romprag")    #=> true
# p second_anagram?("mississippi", "miiiisssspp")
# p fourth_anagram?("mississippi", "miiiisssspp")