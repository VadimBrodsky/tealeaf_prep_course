statement = "Herman Munster is a BIG BIG man." 

class String
	def map_words!
		words = self

		if words[words.length + 1] == '.'
			add_period = true
			words = words[0, words.lenght]
		end

		words = words.split

		words.each do |word|
			yield word 
		end
		words = words.join(' ')
		puts words

		if add_period
			words += '.'
		end
		words

	end
end

statement.map_words! { |word| puts word }
puts statement.map_words! {|word| word.reverse! }
