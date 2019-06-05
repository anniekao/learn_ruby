#write your code here
def add (num1, num2)
    return num1 + num2
end

def subtract (num1, num2)
    return num1 - num2
end

def sum (arr)
    if arr.size == 0
        return 0
    elsif arr.size == 1
        return arr[0]
    else
        return arr.inject { |sum, num| sum + num }
    end
end

def multiply(arr)
    if arr.size == 0
        return 0
    elsif arr.size == 1
        return arr[0]
    else
        return arr.inject { |product, num| product * num}
    end
end

def power(num, pwr)
    return num ** pwr
end

def factorial(num)
    if num < 1
        return 1
    else
        return num * factorial(num - 1)
    end
end