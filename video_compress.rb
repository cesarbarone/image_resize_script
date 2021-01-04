
def resize
  Dir.glob(['*.jpg', '*.JPG' ]).each do |image|
    puts "converting #{image}..."
    `convert  -resize 640X480  #{image} #{image}`
  end
end

def merge
  Dir.glob(['*.jpg']).each do |image|
    puts "merging #{image}..."
    `convert  bg.jpg #{image}  -gravity center -composite -compose over #{image}`
    `convert -rotate 90 #{image} #{image}`
  end
end


# tested for gopro videos and working well
# ffmpeg -i GHAI0854.MP4 -vcodec h264 -acodec aac output.mp4
def compress_video
  Dir.glob(['**/*.mp4' ]).each do |video|
    output_name = "#{video.split('/')[1].split('.')[0]}_compressed.#{video.split('/')[1].split('.')[1]}"
    output_path = "#{video.split('/')[0]}/#{output_name}"
    `ffmpeg -i #{video} -vcodec h264 -acodec aac output_path`
  end
end

compress_video
