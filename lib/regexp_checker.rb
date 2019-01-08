print 'Text?:'
text = gets.chomp

begin
  print 'Pattern?:'
  pattern = gets.chomp
  regxp = Regexp.new(pattern)
rescue RegexpError => e
  puts "Invaild pattern: #{e.message}"
  retry
end
matches = text.scan(regxp)
if matches.size > 0
  puts "Matched: #{matches.join(', ')}"
else
  puts "Nothing matched"
end
