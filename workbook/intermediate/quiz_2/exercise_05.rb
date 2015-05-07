sentence = "Humpty Dumpty sat on a wall."

# My solution
p sentence[0, sentence.length - 1].split.reverse.join(" ") + "."


# Tealeaf solution
# words = sentence.split(/\W/)
# words.reverse!
# backwards_sentence = words.join(' ') + '.'
