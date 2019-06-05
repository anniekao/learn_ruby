class Book
    attr_accessor :title

    def title=(title)
        @title = formatTitle(title)
    end

    def formatTitle(title)
        exceptions = ["the", "a", "an", "and", "in", "of", "over"]
        words = title.split(" ")

        words.each_with_index do |word, idx|
            if idx == 0
                words[idx] = word.capitalize
            elsif exceptions.include?(word)
                words[idx] = word
            else
                words[idx] = word.capitalize
            end
        end
        return words.join(" ")
    end
end
