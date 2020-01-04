# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
    size1 = nums1.size
    size2 = nums2.size
    current_index_val = 0
    next_index_val = 0
    previous_top = 0
    is_previous_top_from_1 = true
    calc_array = Array.new(3)
    if (size1 + size2) % 2 == 0 then
        first_index = (size1 + size2) / 2
        index = 0
        val1 = nums1[0]
        val2 = nums2[0]
        
        if first_index == 1 then
            return (val1 + val2) / 2.0
        else
            if val1 < val2 then
                is_previous_top_from_1 = false
                previous_top = val2
            else
                is_previous_top_from_1 = true
                previous_top = val1
            end
            index = index + 2
            
            if size1 >= size2 then
                for i in 1..size2-1 do
                    val1 = nums1[i]
                    val2 = nums2[i]
                    if(is_previous_top_from_1) then
                        if(val2 < previous_top) then
                            #val2 < previous_top =< val1
                            current_index_val = val2
                            next_index_val = previous_top
                            previous_top = val1
                            is_previous_top_from_1 = true
                        elsif(val2 < val1) then
                            #previous_top < val2 < val1
                            current_index_val = previous_top
                            next_index_val = val2
                            previous_top = val1
                            is_previous_top_from_1 = true
                        else
                            #previous_top =< val1 =< val2
                            current_index_val = previous_top
                            next_index_val = val1
                            previous_top = val2
                            is_previous_top_from_1 = false
                        end
                    else
                        if(val1 < previous_top) then
                            #val1 < previous_top <= val2
                            current_index_val = val1
                            next_index_val = previous_top
                            previous_top = val2
                            is_previous_top_from_1 = false
                        elsif(val1 < val2) then
                            #previous_top < val1 < val2
                            current_index_val = previous_top
                            next_index_val = val1
                            previous_top = val2
                            is_previous_top_from_1 = false
                        else
                            #previous_top =< val2 =< val1
                            current_index_val = previous_top
                            next_index_val = val2
                            previous_top = val1
                            is_previous_top_from_1 = true
                        end
                    end
                    if first_index == index then
                        return (current_index_val + next_index_val) / 2.0
                    end
                    index = index + 2
                end #if size1 >= size2 then for i in 1..size2-1
                
                for i in size2..size1-1 do
                    val1 = nums1[i]
                    val2 = nums1[i+1]
                    print "val1: " + val1.to_s
                    print "val2: " + val2.to_s
                    print "prev: " + previous_top.to_s
                    print "is_prev: " + is_previous_top_from_1.to_s
                    if(!is_previous_top_from_1) then
                        if(val2 < previous_top) then
                            #val1 < val2 < previous_top 
                            current_index_val = val1
                            next_index_val = val2
                            previous_top = previous_top
                            is_previous_top_from_1 = true
                        else
                            #val1 < previous_top < val2
                            current_index_val = val1
                            next_index_val = previous_top
                            previous_top = val2
                            is_previous_top_from_1 = false
                        end
                    else
                        #previous_top =< val1 =< val2
                        current_index_val = previous_top
                        next_index_val = val1
                        previous_top = val2
                        is_previous_top_from_1 = false
                    end
                    if first_index == index then
                        print "curr: " + current_index_val.to_s
                        print "next: " + next_index_val.to_s
                        print "top: " + previous_top.to_s
                        return (current_index_val + next_index_val) / 2.0
                    end
                    index = index + 2
                end
            else #size1 < size2
                for i in 1..size1-1 do
                    val1 = nums1[i]
                    val2 = nums2[i]
                    if(is_previous_top_from_1) then
                        if(val2 < previous_top) then
                            #val2 < previous_top =< val1
                            current_index_val = val2
                            next_index_val = previous_top
                            previous_top = val1
                            is_previous_top_from_1 = true
                        elsif(val2 < val1) then
                            #previous_top < val2 < val1
                            current_index_val = previous_top
                            next_index_val = val2
                            previous_top = val1
                            is_previous_top_from_1 = true
                        else
                            #previous_top =< val1 =< val2
                            current_index_val = previous_top
                            next_index_val = val1
                            previous_top = val2
                            is_previous_top_from_1 = false
                        end
                    else
                        if(val1 < previous_top) then
                            #val1 < previous_top <= val2
                            current_index_val = val1
                            next_index_val = previous_top
                            previous_top = val2
                            is_previous_top_from_1 = false
                        elsif(val1 < val2) then
                            #previous_top < val1 < val2
                            current_index_val = previous_top
                            next_index_val = val1
                            previous_top = val2
                            is_previous_top_from_1 = false
                        else
                            #previous_top =< val2 =< val1
                            current_index_val = previous_top
                            next_index_val = val2
                            previous_top = val1
                            is_previous_top_from_1 = true
                        end
                    end
                    if first_index == index then
                        return (current_index_val + next_index_val) / 2.0
                    end
                    index = index + 2
                end #size1 < size2 for i in 1..size1-1
                
                for i in size1..size2-1 do
                    val1 = nums2[i]
                    val2 = nums2[i+1]
                    print "val1: " + val1.to_s
                    print "val2: " + val2.to_s
                    print "prev: " + previous_top.to_s
                    print "is_prev: " + is_previous_top_from_1.to_s
                    if(is_previous_top_from_1) then
                        if(val2 < previous_top) then
                            #val1 < val2 < previous_top 
                            current_index_val = val1
                            next_index_val = val2
                            previous_top = previous_top
                            is_previous_top_from_1 = true
                        else
                            #val1 < previous_top < val2
                            current_index_val = val1
                            next_index_val = previous_top
                            previous_top = val2
                            is_previous_top_from_1 = false
                        end
                    else
                        #previous_top =< val1 =< val2
                        current_index_val = previous_top
                        next_index_val = val1
                        previous_top = val2
                        is_previous_top_from_1 = false
                    end

                    if first_index == index then
                        print "curr: " + current_index_val.to_s
                        print "next: " + next_index_val.to_s
                        print "top: " + previous_top.to_s
                        return (current_index_val + next_index_val) / 2.0
                    end
                    index = index + 2
                end
            end
        end
    else #(size1 + size2) % 2 != 0
        first_index = (size1 + size2) / 2 + 1
        index = 1
        val1 = nums1[0]
        val2 = nums2[0]     
        print "val1: " + val1.to_s
        print "val2: " + val2.to_s
        if first_index == 2 then
            if size1 > size2 then
                next_val = nums1[1]
                return val2 < next_val ? (val1 < val2 ? val2 : val1) : next_val
            else
                next_val = nums2[1]
                return val1 < next_val ? (val2 < val1 ? val1 : val2) : next_val
            end
        else
            if val1 < val2 then
                is_previous_top_from_1 = false
                previous_top = val2
            else
                is_previous_top_from_1 = true
                previous_top = val1
            end
            index = index + 2
                
            if size1 >= size2 then
                for i in 1..size2-1 do
                    val1 = nums1[i]
                    val2 = nums2[i]
                    if(is_previous_top_from_1) then
                        if(val2 < previous_top) then
                            #val2 < previous_top =< val1
                            current_index_val = val2
                            next_index_val = previous_top
                            previous_top = val1
                            is_previous_top_from_1 = true
                        elsif(val2 < val1) then
                            #previous_top < val2 < val1
                            current_index_val = previous_top
                            next_index_val = val2
                            previous_top = val1
                            is_previous_top_from_1 = true
                        else
                            #previous_top =< val1 =< val2
                            current_index_val = previous_top
                            next_index_val = val1
                            previous_top = val2
                            is_previous_top_from_1 = false
                        end
                    else
                        if(val1 < previous_top) then
                            #val1 < previous_top <= val2
                            current_index_val = val1
                            next_index_val = previous_top
                            previous_top = val2
                            is_previous_top_from_1 = false
                        elsif(val1 < val2) then
                            #previous_top < val1 < val2
                            current_index_val = previous_top
                            next_index_val = val1
                            previous_top = val2
                            is_previous_top_from_1 = false
                        else
                            #previous_top =< val2 =< val1
                            current_index_val = previous_top
                            next_index_val = val2
                            previous_top = val1
                            is_previous_top_from_1 = true
                        end
                    end
                    print "f & i: " + first_index.to_s + " & " + index.to_s
                    if first_index == index then
                        return next_index_val
                    end
                    index = index + 2
                end #if size1 >= size2 then for i in 1..size2-1
            else
                for i in 1..size1-1 do
                    val1 = nums1[i]
                    val2 = nums2[i]
                    if(is_previous_top_from_1) then
                        if(val2 < previous_top) then
                            #val2 < previous_top =< val1
                            current_index_val = val2
                            next_index_val = previous_top
                            previous_top = val1
                            is_previous_top_from_1 = true
                        elsif(val2 < val1) then
                            #previous_top < val2 < val1
                            current_index_val = previous_top
                            next_index_val = val2
                            previous_top = val1
                            is_previous_top_from_1 = true
                        else
                            #previous_top =< val1 =< val2
                            current_index_val = previous_top
                            next_index_val = val1
                            previous_top = val2
                            is_previous_top_from_1 = false
                        end
                    else
                        if(val1 < previous_top) then
                            #val1 < previous_top <= val2
                            current_index_val = val1
                            next_index_val = previous_top
                            previous_top = val2
                            is_previous_top_from_1 = false
                        elsif(val1 < val2) then
                            #previous_top < val1 < val2
                            current_index_val = previous_top
                            next_index_val = val1
                            previous_top = val2
                            is_previous_top_from_1 = false
                        else
                            #previous_top =< val2 =< val1
                            current_index_val = previous_top
                            next_index_val = val2
                            previous_top = val1
                            is_previous_top_from_1 = true
                        end
                    end
                    print "f & i: " + first_index.to_s + " & " + index.to_s
                    if first_index == index then
                        return next_index_val
                    end
                    index = index + 2
                end
            end #if size1 >= size2 then
        end
    end
end

