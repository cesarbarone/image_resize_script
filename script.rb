Dir.glob('../**/*.jpg').each do |image|
  puts "converting #{image}..."
  `convert  -resize 640X480  #{image} small_#{image}`
end