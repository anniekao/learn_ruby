#write your code here
def ftoc(deg)
    if deg == 32
        return 0
    elsif
        converted = (deg - 32) * (5.0/9.0) 
        return converted
    end
end

def ctof(deg)
    if deg == 0 
        return 32
    elsif
        converted = (deg * 9.0/5.0) + 32
        return converted
    end
end