require 'ftools'

puts 'How many images would you like to ?'
batch_amt = gets.chomp

directory = '/Users/Jesus/projects/progress/public/images/capture'
Dir.chdir directory

pic_name = Dir[directory + '/image_to_copy.jpeg']

for i in (1..batch_amt.to_i) # for loop in ruby, max is the amount inputed.
  sleep 1 # wait 1 second between. Used just to test
  File.copy(pic_name[0], "#{i}.jpeg")
  puts "#{i}.jpeg created"
end

puts 'Finished!'