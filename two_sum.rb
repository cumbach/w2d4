def two_sum?(arr, target_sum)
  # hash = Hash.new {|h,k| h[k] = 0}
  #
  # arr.each do |el|
  #   hash[el] += 1
  # end
  #
  # false


  hash = Hash.new { |h, k| h[k] = target_sum }

  arr.each do |el|
    hash[el] -= el
  end

  hash.values.each do |value|
    return true if hash.has_key? (value)
  end

  false


  # arr.sort!
  # index_first = 0
  # index_last = arr.length-1
  #
  # until index_first == index_last
  #   if arr[index_first] + arr[index_last] == target_sum
  #     return true
  #   elsif arr[index_first] + arr[index_last] > target_sum
  #     index_last -= 1
  #   elsif arr[index_first] + arr[index_last] < target_sum
  #     index_first += 1
  #   end
  # end
  # false
end

arr = [5,3,-7,1,10]
p two_sum?(arr, 22) # => should be true
p two_sum?(arr, 11) # => should be false
