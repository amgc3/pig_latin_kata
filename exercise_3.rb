# Develop your work so far to treat 'qu' as a special case, so that those words
# end in 'quay'
# e.g. quick -> ickquay
#      quilt -> iltquay
#      qat   -> atqay

def pig_latin(word)
  vowels = %w[a e i o u]
  if vowels.include?(word[0])
    word << "way"
  elsif word[0] == "q" && word[1] == "u"
    new_word = word.delete(word[0])
    new_word.delete(new_word[0]) + "qu" + "ay"
  else
    while !vowels.include?(word[0])
      word = word.delete(word[0]) << word[0]
    end
    word = word << "ay"
  end
end

## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('quick'), 'ickquay')
assert_equal(pig_latin('quilt'), 'iltquay')
assert_equal(pig_latin('qat'), 'atqay')
