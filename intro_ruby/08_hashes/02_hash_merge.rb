stark = { lord: "Eddard", lady: "Catelyn", heir: "Robb", bastard: "Jon" }

baratheon = { lord: "Robert", lady: "Cercei", heir: "Joffrey", daughter: 'Mircella' }

p stark.merge(baratheon)
p stark

p baratheon.merge!(stark)
p baratheon