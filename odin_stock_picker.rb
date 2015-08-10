odin_stock_picker.rb
def greatest_profit(arr)
    greatest_diff = 0
    pair = []

    idx1 = 0
    while idx1 + 1 < arr.length

        idx2 = idx1 + 1
        while idx2 < arr.length
            current_diff = arr[idx2] - arr[idx1]
            if current_diff > greatest_diff
                greatest_diff = current_diff
                pair = [idx1,idx2]
            end

            idx2 += 1 
        end

        idx1 += 1
    end

    #return greatest_diff
    return pair 
end

p greatest_profit([99,1,45,100])