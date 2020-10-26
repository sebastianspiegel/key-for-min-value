# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

# def key_for_min_value(name_hash)
#     if name_hash.empty? == true   
#         return nil 
#     end
#     # value_array = name_hash.fetch_values 
#     # product = value_array.join " - "

#     max_value = name_hash.each_value.sum 
#     # min_value =  product.to_i
#     name_hash.map do |name, num|
#         until name_hash.length == 1 
#             name_hash.delete_if { |name, num| num > max_value - num }
#             max_value = max_value - num 
#         end  
#         name
#     end 
# end

def key_for_min_value(name_hash)
    lowest_num = nil
    lowest_name = nil 
    name_hash.each do |name, num|
        if lowest_num == nil || num < lowest_num
            lowest_num = num
            lowest_name = name 
        end
    end
    return lowest_name 
end

#set min_value = nil and then set min_value = num 
#set min_key = nil and then set min_key = key 
