module FunWithStrings
  def palindrome?
    if self.empty?
      return false
    elsif self.downcase.gsub(/[^a-z]/, "").reverse.eql? self.downcase.gsub(/[^a-z]/, "")
      return true
    else
      return false
    end
  end
  
  def count_words
    hash = self.downcase.gsub(/[!.,-]/, "").split(" ")
    palavras = Hash.new(0)
    
    hash.each do  |x| 
      palavras[x] += 1
    end
    
    palavras.each do |x, y|
      puts x + " " + y.to_s
    end
    
  end
  
  def anagram_groups
    hash = self.gsub(/[!.,-]/, "").split(" ")
    return hash.group_by { |element| element.downcase.chars.sort }.values
   
  end

end
# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings

end