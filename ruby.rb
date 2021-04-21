def burble_sort(arr)
  len = 0
  while len < arr.length
    (arr.length - 1).times do |i|
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if arr[i] > arr[i + 1]
    end
    len += 1
  end
  arr
end

p burble_sort([9, 8, 7, 6, 5, 4, 3, 2, 1, 3, 4, 5, 6, 7, 8])

def burble_sort_by(arr)
  len = 0
  while len < arr.length
    (arr.length - 1).times do |i|
      sort_by = yield(arr[i], arr[i + 1])
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if sort_by.positive?
    end
    len += 1
  end
  arr
end

p burble_sort_by(%w[hi hello hey h]) { |left, right| left.length - right.length }
