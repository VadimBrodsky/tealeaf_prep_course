require 'securerandom'

def uuid_secure
	format_sections = [8, 4, 4, 4, 12]
	full_uuid = []

	format_sections.each do |length|
		full_uuid << SecureRandom.hex(length / 2)
	end

	full_uuid.join('-')
end


def uuid_manual
	hex_characters = (0..9).to_a + ('a'..'f').to_a
	uuid_format = [8, 4, 4, 4, 12]
	full_uuid = []

	uuid_format.each do |digits|
		full_uuid << hex_characters.sample(digits).join
	end
	full_uuid.join('-')
end


puts uuid_secure
puts uuid_manual
