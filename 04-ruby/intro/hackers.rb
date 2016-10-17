require 'pry'
require 'fileutils'

hackers = gets.chomp.split(',')

# get the list of hackers from the user gets
# hackers = ['Bar Code', 'Joe Black', 'John Smith', 'James Mah']

hackers.each do |hacker|
  folder_name = hacker.downcase.gsub(' ', '_')
  FileUtils.mkdir folder_name
  # chang directory into this newly created folder
  FileUtils.cd folder_name do
    # and than touch a new file called README.md
    FileUtils.touch 'README.md'
  end
end


# binding.pry # pause your program right here!!!!!!


# iterators

# 5.times do 
#   puts 'OMG'
# end

# 5.downto(1) do |i|
#   puts 'OMG'
#   puts i
# end

# hackers.each do |hacker|
#   puts hacker
# end

# [1] pry(main)> gets
# sdfsdlfsdlfkj
# => "sdfsdlfsdlfkj\n"
# [2] pry(main)> user_input = gets
# hellow there
# => "hellow there\n"
# [3] pry(main)> user_input
# => "hellow there\n"
# [4] pry(main)> user_input = gets()
# sdfsdfs
# => "sdfsdfs\n"
# [5] pry(main)> user_input = gets.chomp
# yay
# => "yay"
# [6] pry(main)> user_input = gets.chomp.split(',')
# one,two,three
# => ["one", "two", "three"]
# [7] pry(main)> exit



