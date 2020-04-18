
def resize
  Dir.glob(['*.jpg', '*.JPG' ]).each do |image|
    puts "converting #{image}..."
    `convert  -resize 640X480  #{image} #{image}`
  end
end

def merge
  Dir.glob(['*.jpg', '*.JPG' ]).each do |image|
    puts "merging #{image}..."
    `convert  bg.jpg #{image}  -gravity center -composite -compose over #{image}`
    `convert -rotate 90 #{image} #{image}`
  end
end


merge