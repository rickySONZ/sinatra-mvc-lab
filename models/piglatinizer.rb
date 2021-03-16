class PigLatinizer


    def piglatinize(string)

        vowels = ["a", "e", "i", "o", "u"]
        string = string.split(" ")
    string.map! do |word|
        if vowels.include?(word[0].downcase)
            word += "way"
        elsif vowels.include?(word[0].downcase) == false && vowels.include?(word[1].downcase) == false && vowels.include?(word[2]) == false
            word = "#{word[3..-1]}#{word [0..2]}ay"
        elsif vowels.include?(word[0].downcase) == false && vowels.include?(word[1].downcase) == false
            word = "#{word[2..-1]}#{word [0..1]}ay"
        elsif vowels.include?(word[0].downcase) == false
            word = "#{word[1..-1]}#{word[0]}ay"
        end
    end
        string.join(" ")
    end


    end