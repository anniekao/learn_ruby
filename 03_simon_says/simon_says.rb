#write your code here
def echo(word)
    return word
end

def shout(word)
    return word.upcase
end

def repeat(word, reps = 2)
    repeated = ""
    reps.times do
        repeated += word + " "
    end
    return repeated.slice(0,repeated.length-1)
end

def start_of_word(word, num)
    return word.slice(0, num)
end

def first_word(words)
    return words.partition(" ").first
end

def titleize(words)
    forbiddenWords = ["and", "the", "a", "over"]
    words = words.split(" ")
    words.each_with_index do |word, i|
        if i == 0
            words[i] = word.capitalize
        elsif !forbiddenWords.include?(word)
            words[i] = word.capitalize
        end
    end
    return words.join(" ")
end

