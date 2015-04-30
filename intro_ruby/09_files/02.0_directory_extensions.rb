d = Dir.new(".")

while file = d.read do
  puts "#{file} has an extension .txt" if File.extname(file) == ".txt"
end