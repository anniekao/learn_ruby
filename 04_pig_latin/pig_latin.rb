#write your code here
def translate(words)
    words = words.split(" ")
    vowels = ["a", "e", "i", "o", "u"]

    words.each_with_index do |word, idx|
        if vowels.include?word[0]
            words[idx] = word + "ay"
        elsif word.index("qu") != nil
            idxQU = word.index("qu")
            words[idx] = word[idxQU+2..-1] + word[0..idxQU+1] + "ay"
        else 
            word.each_char.with_index do |char, i|
                if vowels.include?(char)
                    consonants = word[0...i]
                    chopped = word[i..-1]
                    words[idx] = chopped + consonants + "ay"
                    break
                end
            end
        end
    end
    return words.join(" ")
end



