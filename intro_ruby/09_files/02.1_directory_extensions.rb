require 'pathname'

pn = Pathname.new('.')
pn.entries.each { |f| puts "#{f} has an extension .txt" if File.extname(f) == ".txt"}