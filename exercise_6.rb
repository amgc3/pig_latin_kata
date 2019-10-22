# Write the program to reverse the above
# e.g. "Ethay uickqay oxfay umpedjay overway ethay azylay ogday" ->
#      "The quick fox jumped over the lazy dog"

def pig_latin_sentence_reverse(sentence)
  new_array = []
  my_array = sentence.split(" ")
  #my_array.map {|item|
  (1..7).each do
    i = 0
    new_array << translation(my_array[i])
    i += 1
    puts new_array
  end
end
    # if item[-3..-1] == "way"
    #   puts item
    #   item = item.delete(item[-3..-1])
    #   puts item
    # else
    #   my_item = item.delete(item[-2..-1])
    #   puts my_item
    #   #puts my_item.Class
    #   item = my_item[-1] << my_item.delete(my_item[-1])
    #   puts item
    # end


def translation(word)
  if word[-3..-1] == "way"
    puts word
    word = word.delete(word[-3..-1])
    puts word
  else
    my_item = word.delete(word[-2..-1])
    puts my_item
    #puts my_item.Class
    word = my_item[-1] + my_item.delete(my_item[-1])
    puts word
  end
end


## Tests:

require_relative './helpers/assert_equal'
assert_equal(
  pig_latin_sentence_reverse('Ethay ickquay oxfay umpedjay overway ethay azylay ogday'),
  'The quick fox jumped over the lazy dog'
)
