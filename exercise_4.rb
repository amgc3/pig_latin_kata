# Develop your work so far to preserve the existing capitalisation of the word
# e.g. Dog  -> Ogday
#      cram -> amcray
#
# Assume words either start with a capital letter or don't — don't worry about
# other formats
# def is_upper(letter)
#   letter = letter.capitalize
# end

def pig_latin(word)
  vowels = %w[a e i o u]
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
        break
      else
        word = word.delete(word[0]) << word[0]
      end
    end
    word = word << "ay"
  end
end

## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('Dog'), 'Ogday')
assert_equal(pig_latin('cram'), 'amcray')
