# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    existing_characters = {}
    string = ""
    longest_size = 0
    size = 0
    s.each_char{|c| 
            if !existing_characters.has_key?(c) then
                existing_characters[c] = size
                string.concat(c)
                size = size + 1
            else
                if (string.size > longest_size) then
                    longest_size = string.size
                end
                index = existing_characters[c]
                dropping_string = string.slice(0, index+1)
                remaining_string = string.slice(index+1, string.size - (index+1))
                dropping_string.each_char{|c| existing_characters.delete(c)}
                remaining_index = 0
                remaining_string.each_char{|c| 
                    existing_characters[c] = remaining_index
                    remaining_index = remaining_index + 1
                }
                string = remaining_string == nil ? "" : remaining_string
                size = string.size
                existing_characters[c] = size
                string.concat(c)
                size = size + 1
            end
        }
        
    if (string.size > longest_size) then
        longest_size = string.size
        string = ""
    end
    return longest_size
end
