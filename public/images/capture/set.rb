require 'ftools'

Dir.chdir '/Users/Jesus/projects/progress/public/images/capture'

pic_name = Dir['/Users/Jesus/projects/progress/public/images/capture/clown.jpeg']

for i in (1..500)
  sleep 3
File.copy(pic_name[0], "#{i}.jpeg")
puts "#{i}.jpeg"
end

puts 'Finished!'