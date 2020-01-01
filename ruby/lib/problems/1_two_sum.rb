# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    hash = {}
    for i in 0..nums.length-1
        hash[nums[i]] = i    
    end
    for i in 0..nums.length-1
        complement = target - nums[i]
        if hash.has_key?(complement) && (hash[complement] != i)
            return [i, hash[complement]]
        end
    end
end
