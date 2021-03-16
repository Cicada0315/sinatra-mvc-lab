class PigLatinizer 
    def initialize
        
    end

    def piglatinize(phrase)
        alpha = ('a'..'z').to_a + ('A'..'Z').to_a
        vowels = %w[a e i o u] + %w[A E I O U]
        consonants = alpha - vowels
        words= phrase.split(" ")
        st=[]
        
        words.each do |word|
            if vowels.include?(word[0])
                st << word+'way'
            elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
                newone=word[3..-1] + word[0..2]+'ay'
                st << newone
            elsif consonants.include?(word[0]) && consonants.include?(word[1])
                newone=word[2..-1] + word[0..1]+'ay'
                st << newone
            elsif consonants.include?(word[0])
                newone=word[1..-1] + word[0]+'ay'
                st<< newone
            else
                st << word
            end 
        end
        return pig=st.join(' ')
    end
end