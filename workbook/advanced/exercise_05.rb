statement = "Herman Munster is a BIG BIG man!"

class String
	def map_words!
		words = self

		# check the last character for punctuation
		if words[words.length - 1] =~ /\p{Punct}$/
			punctuation = words[words.length - 1]
		end

		# split the string based on word regex
		words = words.split(/\W/)

		# yield the map iterator
		words.map!{ |word| yield word}

		# combine and add punctuation if needed
		words = words.join(' ')
		words += punctuation if punctuation

		# return the self object
		self.replace(words)
	end
end

# statement.map_words! { |word| puts word }
puts statement.map_words! {|word| word.reverse }
