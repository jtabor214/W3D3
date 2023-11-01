def iter_range(first, last)
    numbers_between = []
    i = first
    while i < last 
        numbers_between << i 
        i += 1
    end
    numbers_between
end

# p iter_range(2, 10)

