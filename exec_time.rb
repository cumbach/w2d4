require 'byebug'
def my_min1(list)
  # min = list.first
  list.count.times do |el|
    return list[el] if list.all?{ |each_list_el| each_list_el >= list[el] }
  end
    # list.count.times do |num|
    #   return list[el] if list[el].all?{|el| list[el] < list[num]}
    # #   if list[el] < list[num]
    # #
    # end
    # list.each do |el1|
    #     return el1 if list.all? { |el| el1 <= el }
    #   end
  end



def my_min(list)
  min = list.first
  list.each do |number|
    if number < min
      min = number
    end
  end
  min
end
# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min1(list)  # =>  -5
# list.count.times do |el|
#   p el
# end

# def largest_contiguous_subsum(list)
  # subarrays = []
  # i = 0
  # while i < list.length
  #   j = i
  #   while j < list.length
  #     subarrays << list[i..j]
  #     j += 1
  #   end
  #   i += 1
  # end
  #
  # sum_subarrays = subarrays.map { |subarray| subarray.inject(&:+) }
  # sum_subarrays.sort.last

  # max_overall = list.first
  # curr_max = list.first
  # list.each_with_index do |el, idx|
  #   curr_max = el + list[idx + 1]
  #   if curr_max > max_overall
  #     max_overall = curr_max
  #   else
  #     curr_max = 0
  #   end
  # end
  #
  # max_overall

def largest_contiguous_subsum2(array)
    debugger
    largest = 0
    current = 0

    array.each do |el|
      current += el
      largest = current if current > largest
      current = 0 if current < 0
    end

  largest
end

list = [5, 3, -7, 1, 10]
p largest_contiguous_subsum2(list) # => 11
