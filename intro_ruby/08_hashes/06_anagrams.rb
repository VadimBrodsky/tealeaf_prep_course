words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live', 'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide', 'flow', 'neon']


def sort_letters(word)
  word.split('').sort.join
end

def is_anagram(word1, word2)
  sort_letters(word1) == sort_letters(word2) ? true : false
end

anagrams = {}

words.each do |word|
  key = sort_letters(word)

  if anagrams.has_key?(key)
    anagrams[key] << word
  else
    anagrams[key] = [word]
  end
end

anagrams.each { |k,v| p v }