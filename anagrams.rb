def first_anagram?(first_string, second_string)
  permutations = first_string.split("").permutation.to_a
  permutations.each do |permutation|
    return true if permutation.join("") == second_string
  end
  false
end

def second_anagram?(first_string, second_string)
  first_array = first_string.split("")
  second_array = second_string.split("")

  first_string.split("").each_with_index do |letter_first, idx1|
    second_string.split("").each_with_index do |letter_second, idx2|
      if letter_first == letter_second
        first_array[idx1] = ""
        second_array[idx2] = ""
      end
    end
  end


  first_array.join == "" && second_array.join == ""
  # return true if first_array.empty? && second_array.empty?
  # false
  # if first_array.join.count == 0 && second_array.join.count == 0
  #   return true
  # else
  #   return false
  # end
end

def third_anagram?(first_string, second_string)
  first_string.split("").sort == second_string.split("").sort
end

def fourth_anagram?(first_string, second_string)
  first_hash = Hash.new { |h, k| h[k] = 0 }
  second_hash = Hash.new { |h, k| h[k] = 0 }
  first_string.each_char do |letter|
    first_hash[letter] += 1
  end
  second_string.each_char do |letter|
    second_hash[letter] += 1
  end
  p first_hash
  p second_hash

  # first_hash == second_hash
end

fourth_anagram?("ssgizmo", "sally")    #=> false
 fourth_anagram?("elvis", "lives")    #=> true
