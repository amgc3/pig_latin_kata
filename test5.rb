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
        # while !vowels.include?
        word = word.delete(word[0]) << word[0].downcase
        word = word.capitalize
        puts word
      else
        word = word.delete(word[0]) << word[0]
        puts word
      end
    end
    word = word << "ay"
    puts word
  end
  puts word
end

pig_latin("The")
