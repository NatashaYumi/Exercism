class Acronym
    def self.abbreviate(phrase)
      abbreviate_term = ""
      phrase.gsub((/\W/),(" ")).split.each do |palavras|
        abbreviate_term +=  palavras[0].upcase
      end
      return abbreviate_term
    end
  end
