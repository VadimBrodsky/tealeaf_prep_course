words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live', 'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide', 'flow', 'neon']

def is_anagram?(word1, word2)
  if word1.split(//).sort.join == word2.split(//).sort.join
    true
  else
    false
  end
end


for word in words do
  
  anagram = words.select do |other_word|
    if is_anagram?(word, other_word)
      other_word
    end
  end

  p anagram
end


