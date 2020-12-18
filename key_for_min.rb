# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
# If the method is called and passed an argument of an empty hash, it should return nil

# following methods are helpful but off limits for this exercise:
    #key
    #keys
    #values
    #min
    #sort
    #sort_by
    #min_by


def key_for_min_value(name_hash)
    lowest_key = nil # set key (name in this hash) variable to nil
    lowest_value = nil # set lowest value variable to nil
    name_hash.each do |name, num| # iterate the hash and use created block variables 
        if lowest_value == nil || num < lowest_value # if passed empty hash or value (num) is lower
            lowest_value = num # set that num to lowest_value variable
            lowest_key = name # set that paired name as the key so we can return key for lowest value
        end # end if loop
    end # end each/do
    lowest_key # returns the key for the lowest value as requested
end