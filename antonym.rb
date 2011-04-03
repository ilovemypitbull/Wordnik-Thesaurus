require 'rubygems'
require 'wordnik-ruby'

wordnik=Wordnik::Wordnik.new({:api_key=>'api-key'})

puts "Give me a word:"
word_input = gets.chomp

my_word = Wordnik::Word.find(word_input)

my_word_related = my_word.related

i = 0

word_possibilities = Array.new

if my_word_related["antonym"]
  while i < my_word_related["antonym"].length
    word_possibilities.push(my_word_related["antonym"][i].wordstring)
    i += 1
  end
end


word_possibilities.uniq!

for i in word_possibilities
  puts i
end

