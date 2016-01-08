#!/bin/bash
echo "Updating ruby script..."
curl https://raw.githubusercontent.com/cesarbarone/image_resize_script/master/script.rb >> script.rb
echo "Converting files..."
ruby script.rb