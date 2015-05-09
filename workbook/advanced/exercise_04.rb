require 'securerandom'

def uuid
	full_uuid = []
	full_uuid << SecureRandom.hex(4)
	full_uuid << SecureRandom.hex(2)
	full_uuid << SecureRandom.hex(2)
	full_uuid << SecureRandom.hex(2)
	full_uuid << SecureRandom.hex(6)
	full_uuid.join('-')
end

puts uuid
