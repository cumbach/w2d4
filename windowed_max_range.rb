def windowed_max_range(arr, window_length)
  current_max_range = nil
  window_arrays = []
  i = 0
  while i + window_length <= arr.length
    window_arrays << arr.slice(i, window_length)
    i += 1
  end

  window_arrays.each do |window|
    range = window.max - window.min
    current_max_range = range if current_max_range.nil? || range > current_max_range
  end
current_max_range
end

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8
