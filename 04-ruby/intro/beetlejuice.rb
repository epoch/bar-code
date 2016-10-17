3.times do
  puts 'beetlejuice'
end


# commenting in ruby

if 13 > 10 
  puts '13 is greater than 10' 
end

if 13 > 10
  puts 'maths makes sense'
else
  puts 'the else is optional'
end

if 13 > 10
  puts 'maths makes sense'
elsif 14 < 9
  puts 'maths does not make any sense'
else
  puts('this is optional')
end

# loop

number = 0 # default to local

while number < 5
  puts number
  number = number + 1 # number+=1
end

# until condition
#   do something
# end

# while !bank_account.empty?
#   puts 'party on'
# end

# until bank_account.empty?
#   puts 'party on'
# end

loop do
  puts 'never ends'

  break
end

dumplings_devoured = 0

loop do
  puts 'eat one dumpling'
  dumplings_devoured+=1
  break if dumplings_devoured > 5
end

# arrays
simpsons = ['bart', 'lisa', 'homer', 'ned']

puts simpsons[0]
puts simpsons[simpsons.length-1]
puts simpsons[-1]
puts simpsons[-2]
puts simpsons[100]

simpsons.push('maggie')

simpsons.shift

puts simpsons
puts simpsons.to_s

firstname = 'coolcat'
puts "hello #{coolcat}"
puts "hello your firstname #{ 2 + 2 }"
puts "hello your firstname is #{ 'bar' + 'code' }"