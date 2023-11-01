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
    debugger
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






