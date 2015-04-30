sample = File.read("sample_file.txt")

original = File.new("01_original_file.txt", "w+")

File.open("01_original_file.txt", "w+") do |file|
  file.puts sample.upcase
end

puts File.read(original)