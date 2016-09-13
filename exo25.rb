module Exo25

  # this function will break up words for us
  def Exo25.break_words(stuff)
    words = stuff.split(' ')
    return words
  end

  # sort the words.
  def Exo25.sort_words(words)
    return words.sort
  end

  # Prints the first word after shifting it off.
  def Exo25.print_first_word(words)
    word = words.shift
    puts word
  end


  # print the last word after popping it off.
  def Exo25.print_last_word(words)
    word = words.pop
    puts word
  end

  # Takes in a full sentence and returns the sorted words.
  def Exo25.sort_sentence(sentence)
    words = Exo25.break_words(sentence)
    return Exo25.sort_words(words)
  end

  # Print the first and last words of the sentece
  def Exo25.print_first_and_last(sentence)
    words = Exo25.break_words(sentence)
    Exo25.print_first_word(words)
    Exo25.print_last_word(words)
  end

  def Exo25.print_first_and_last_sorted(sentence)
    words = Exo25.sort_sentence(sentence)
    Exo25.print_first_word(words)
    Exo25.print_last_word(words)
  end

end

