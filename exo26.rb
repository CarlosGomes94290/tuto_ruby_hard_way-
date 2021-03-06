module Exo25

  # This function will break up words for us.
  def Exo25.break_words(stuff)
    words = stuff.split(' ')
    return words
  end

  # Sorts the words.
  def Exo25.sort_words(words)
    return words.sort
  end

  # Prints the first word after popping it off.
  def Exo25.print_first_word(words)
    word = words.pop(1)
    puts word
  end

  # Prints the last word after popping it off.
  def Exo25.print_last_word(words)
    word = words.pop
    puts word
  end

  # Takes in a full sentence and returns the sorted words.
  def Exo25.sort_sentence(sentence)
    words = Exo25.break_words(sentence)
    return Exo25.sort_words(words)
  end

  # Prints the first and last words of the sentence.
  def Exo25.print_first_and_last(sentence)
    words = Exo25.break_words(sentence)
    Exo25.print_first_word(words)
    Exo25.print_last_word(words)
  end

  # Sorts the words then prints the first and last one.
  def Exo25.print_first_and_last_sorted(sentence)
    words = Exo25.sort_sentence(sentence)
    Exo25.print_first_word(words)
    Exo25.print_last_word(words)
  end



puts "Let's practice everything."
puts 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs.'

poem = <<END
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.
END

puts "--------------"
puts poem
puts "--------------"


five = 10 - 2 + 3 - 6
puts "This should be five: #{five}"

def Exo25.secret_formula(started)
  jelly_beans = started * 500
  jars = jelly_beans / 1000
  crates = jars / 100
  return jelly_beans, jars, crates
end


start_point = 10000
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of: #{start_point}"
puts "We\'d have #{beans} beans, #{jars} jars, and #{crates} crates."

start_point = start_point / 10

sentence = "All good things come to those who wait."
words = Exo25.break_words(sentence)
sorted_words = Exo25.sort_words(words)
Exo25.print_first_word(words)
Exo25.print_last_word(words)
Exo25.print_first_word(sorted_words)
Exo25.print_last_word(sorted_words)
sorted_words = Exo25.sort_sentence(sentence)
Exo25.print_first_and_last(sentence)
Exo25.print_first_and_last_sorted(sentence)

end
