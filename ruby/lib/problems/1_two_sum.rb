# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    hash = {}
    for i in 0..nums.length-1
        if hash.has_key?(nums[i]) && (hash[nums[i]] != i) then
            return [hash[nums[i]], i]
        else
            hash[target - nums[i]] = i
        end
    end
end
