Dir.glob(['../**/*.jpg', '../**/*.JPG' ]).each do |image|
  puts "converting #{image}..."
  `convert  -resize 640X480  #{image} #{image}`
end