stark = { lord: "Eddard", lady: "Catelyn", heir: "Robb", bastard: "Jon" }

stark.each { |k,v| puts "Key: #{k}" }
stark.each { |k,v| puts "Value: #{v}" }
stark.each { |k,v| puts "#{k}: #{v}" }