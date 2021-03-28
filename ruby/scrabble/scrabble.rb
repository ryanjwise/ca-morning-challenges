def evaluate_word(word)
  score = 0
  word.chars.each do |character|
    score += character.ord - 96 # Convert to ascii value and subtract 96 so 'a' =1
  end
  score
end

def word_ranking(words)
  word_list = words.split(' ')
  highscore = { word: '', score: 0 }

  word_list.each do |word|
    score = evaluate_word(word)
    if score > highscore[:score]
      highscore[:word] = word
      highscore[:score] = score
    end
  end
  highscore[:word]
end

# puts word_ranking("test when we are here")
# puts word_ranking("a b c d e f g")

# Working on individual character scoring
# def eval_scrable(word)
#   score = 0
#   word.chars.each do |character|
#     pp character
#   end
#   score
# end

# eval_scrable('tasty')