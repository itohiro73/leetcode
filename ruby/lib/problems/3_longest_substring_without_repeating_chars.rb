# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    n = s.size
    ans = 0;
    hash = {}
    i = 0;
    chars = s.split("")
    for j in 0..n-1 do
        if hash.has_key?(chars[j]) then
            i = [hash[chars[j]], i].max
        end
        ans = [ans, j - i + 1].max
        hash[chars[j]] = j + 1
    end
    return ans
end
