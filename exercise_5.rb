# Develop your work so far to handle sentences
# e.g. "The quick fox jumped over the lazy dog" ->
#      "Ethay ickquay oxfay umpedjay overway ethay azylay ogday"

def pig_latin_sentence(sentence)
  words_array = sentence.split(" ")
  puts words_array
  my_sentence = words_array.map {|item|pig_latin(item)}
  my_sentence.join(' ')
end


def pig_latin(word)
  vowels = %w[a e i o u A E I O U]
  if vowels.include?(word[0])
    word << "way"
  elsif word[0] == "q" && word[1] == "u"
    new_word = word.delete(word[0])
    new_word.delete(new_word[0]) + "qu" + "ay"
  else
    while !vowels.include?(word[0])
      if word[0] == word[0].capitalize
        word = word.delete(word[0]) << word[0].downcase
        word = word.capitalize

      else
        word = word.delete(word[0]) << word[0]
      end
    end
    word = word << "ay"
  end
end

## Tests:

require_relative './helpers/assert_equal'
assert_equal(
  pig_latin_sentence('The quick fox jumped over the lazy dog'),
  'Ethay ickquay oxfay umpedjay overway ethay azylay ogday'
)
