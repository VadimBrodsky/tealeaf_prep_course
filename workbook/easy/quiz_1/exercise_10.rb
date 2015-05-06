flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = {}
flintstones.each_with_index { |item, index| flintstones_hash[index] = item }
p flintstones_hash
