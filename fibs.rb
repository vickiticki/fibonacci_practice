def fibs(num)
    i = 1
    result = [0]
    while i < num
        if i == 1
            result.push(1)
        else
            result.push(result[i-1] + result[i-2])
        end
        i += 1
    end
    return result
end

def fibs_rec(num)
    
    if num == 0
        0
    elsif num == 1
        1
    else
        fibs_rec(num - 1) + fibs_rec(num - 2)
    end

end

fibs(6)

# there is a better way to do this but idk
result = []
for n in 1..6
    result << fibs_rec(n)
end
puts result