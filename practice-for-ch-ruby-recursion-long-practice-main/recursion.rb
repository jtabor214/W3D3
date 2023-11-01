require 'byebug'

def iter_range(first, last)

    numbers_between = []
    i = first
    while i < last 
        numbers_between << i 
        i += 1
    end
    numbers_between
end

def rec_range(first, last)

    return [] if first == last 
    return [] if last < first
    [first] + rec_range(first + 1, last)

end

# p iter_range(2, 10)
p rec_range(1, 4)

def exponentiation(base, power)
    return 0 if base == 0
    return base if power == 1
    stack = exponentiation(base, power - 1)
    base * stack
    # debugger
end

p exponentiation(3, 3)


def expo(base, power)

    return 0 if base == 0
    return base if power == 1
    half = expo(base, power / 2)

    if power.even?
        expo(base, power / 2) * half
    else
        base * half * half
    end
end

p expo(3, 4)
p expo(3, 3)
p exponentiation(3, 3)

# class Array

def deep_dup(arr)
    dup_array = []
    arr.each do |ele|
        if !ele.is_a?(Array)
            dup_array << ele  
        else 
            dup_array << deep_dup(ele)
        end
    end
    dup_array
end

# end
arr = [1,[2],[3,[4]]]
p arr.object_id
b = deep_dup(arr)
p b  
p b.object_id
p b[1].object_id
p arr[1].object_id



