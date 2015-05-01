talk = Proc.new do
  puts "I am talking."
end

talk.call

talk_name = Proc.new do |name|
  puts "I am talking to #{name}"
end

talk_name.call "Bob"