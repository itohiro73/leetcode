# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  size1 = nums1 != nil ? nums1.size : 0
  size2 = nums2 != nil ? nums2.size : 0
  nums_all = Array.new(size1 + size2)
  i = 0
  j = 0
  while i < size1 || j < size2 do
    if (j >= size2) || ( i < size1 && nums1[i] < nums2[j] ) then
      nums_all[i + j] = nums1[i]
      i = i + 1
    else
      nums_all[i + j] = nums2[j]
      j = j + 1
    end
  end

  if (size1 + size2) % 2 == 0 then
    first_index = (size1 + size2) / 2 - 1
    return (nums_all[first_index] + nums_all[first_index + 1]) / 2.0
  else
    index = (size1 + size2) / 2
    return nums_all[index]
  end
end
