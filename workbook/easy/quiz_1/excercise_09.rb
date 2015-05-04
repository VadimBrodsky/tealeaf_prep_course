flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# Way 1:
p flintstones.select{ |k,v| k == 'Barney' }.to_a.flatten

# Way 2:
p flintstones.assoc("Barney")
