# @param {String} s
# @return {String}
def longest_palindrome(s)
    chars = s.split("")
    size = s.size
    longest_palindrome = chars[0]==nil ? "" : chars[0]
    for i in 1..size-1 do
        if(chars[i-1] == chars[i]) then
            j = 1
            palindrome = chars[i-1] + chars[i]
            while (i-1-j >= 0) && (i+j < size) && chars[i-1-j] == chars[i+j] do
                palindrome = chars[i-1-j] + palindrome + chars[i+j]
                j = j + 1
            end
            if longest_palindrome.size < palindrome.size then
                longest_palindrome = palindrome
            end
        end
        
        if(i+1 < size && chars[i-1] == chars[i+1]) then
            j = 1
            palindrome = chars[i-1] + chars[i] + chars[i+1]
            while (i-1-j >=0) && (i+1+j < size) && chars[i-1-j] == chars[i+1+j] do
                palindrome = chars[i-1-j] + palindrome + chars[i+1+j]
                j = j + 1
            end
            if longest_palindrome.size < palindrome.size then
                longest_palindrome = palindrome
            end
        end
    end
    return longest_palindrome
end
