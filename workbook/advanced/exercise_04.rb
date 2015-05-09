require 'securerandom'

def uuid
	format_sections = [8, 4, 4, 4, 12]
	full_uuid = []

	format_sections.each do |length|
		full_uuid << SecureRandom.hex(length / 2)
	end

	full_uuid.join('-')
end

puts uuid
