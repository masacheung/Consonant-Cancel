#Write a method consonant_cancel that takes in a sentence and returns a new sentence where every word begins with it's first vowel.

# Soluation 1
def consonant_cancel(sentence)
	words = sentence.split(" ")
  	
  	new_word = []
    words.each {|word| new_word << del(word)}
  
  	return new_word.join(" ")
end

def del(word)
  	vowels = "aeiou"
   	word.each_char.with_index do |char, idx|
  		if vowels.include?(char)
          return word[idx..-1]
        end
	end
end

# Soluation 2 using Map
# def consonant_cancel(sentence)
#   words = sentence.split
#   new_words = words.map { |word| remove_first_consonant(word) }
#   return new_words.join(" ")
# end

# def remove_first_consonant(word)
#   vowels = "aeiou"
#   word.each_char.with_index do |char, i|
#     if vowels.include?(char)
#       return word[i..-1]
#     end
#   end
# end

puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"