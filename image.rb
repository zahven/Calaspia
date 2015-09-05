require 'tk'

$resultsVar = TkVariable.new
root = TkRoot.new
root.title = "The world!"


image = TkPhotoImage.new
image.file = "world.gif"
puts "#{image.width} x #{image.height}"

root['geometry'] =  "#{image.width}x#{image.height}-30+30"

label = TkLabel.new(root)
label.image = image
label.place('height' => image.height,
            'width' => image.width,
      	    'x' => 0, 'y' => 0)
Tk.mainloop
