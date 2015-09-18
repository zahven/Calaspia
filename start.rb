require 'tk'

root = TkRoot.new
root.title = "The Most Glorious Game Ever"

def start 
	puts "Woops, someone pressed a button"
	exit
end

image = TkPhotoImage.new
image.file = "world.gif"
root['geometry'] = "#{image.width}x#{image.height}-30+30"
lbl = TkLabel.new (root)
lbl.image = image
lbl.place('height'=>image.height,
	'width'=>image.width,
	'x'=>0,
	'y'=>0)
but = TkButton.new (root) {
	text "Quit"
	command (proc {start})
}
but.place('x'=> image.width/2,
	'y'=> image.height/2)
Tk.mainloop
