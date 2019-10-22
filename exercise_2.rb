# Develop your proram to handle multiple consonants at the start of words.
#
# The rule is:
# If the word starts with one or more consonants, move them to the end.
# e.g. cram     -> amcray
#      sprinkle -> inklespray
#
# Still assume the words are lowercase.

def pig_latin(word)
  vowels = %w[a e i o u A E I O U]
  if vowels.include?(word[0])
    word << "way"
  else
    while !vowels.include?(word[0])
      word = word.delete(word[0]) << word[0]
    end
    word = word << "ay"
  end
end


## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('cram'), 'amcray')
assert_equal(pig_latin('sprinkle'), 'inklespray')
assert_equal(pig_latin('dog'), 'ogday')
assert_equal(pig_latin('up'), 'upway')
