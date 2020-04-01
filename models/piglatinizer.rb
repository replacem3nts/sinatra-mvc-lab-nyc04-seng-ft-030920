require 'pry'
class PigLatinizer
    attr_accessor :text
    def initialize
    end

    def piglatinize(text)
        if text.split(" ").count > 1
            word_array = text.split(" ")
            word_array.map {|word| "#{piglatinize_word(word)} "}.join.strip
        else
            piglatinize_word(text)
        end
    end

    def piglatinize_word(text)
        if text.match(/^[^aeiouAEIOU]/)
            consonants = text.match(/^[^aeiouAEIOU]+/).to_s
            suffix = text.delete_prefix(consonants)
            result = suffix + consonants + "ay"
        else
            result = text + "way"
        end
        result
    end
end