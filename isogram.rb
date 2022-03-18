class Isogram
    def self.isogram?(word)
      word = word.gsub((/\W/),"").downcase
        return true if (word.size.eql?(word.each_char.uniq.size))
        false
    end
end