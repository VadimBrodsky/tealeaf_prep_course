statement = "Herman Munster is a BIG BIG man."

class String
	def map_words!
		words = self
		if words[words.length - 1] =~ /[.?!]/
			punctuation = words[words.length - 1]
			words.chop!
		end
		words = words.split

		words.each do |word|
			yield word
		end

		words = words.join(' ')

		if punctuation
			words += punctuation
		end

		words

	end
end

# statement.map_words! { |word| puts word }
puts statement.map_words! {|word| word.reverse! }
