def sort(arr)    
    for j in arr do
      (arr.length-1).times do |i|
        if arr[i] > arr[i+1]
          temp = arr[i]
          arr[i] = arr[i+1]
          arr[i+1] = temp
        end
      end
    end
    p arr
    return arr
  end

p = [9,8,7,6,5,4,3,2,1,3,4,5,6,7,8]
sort(p)