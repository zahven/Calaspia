require 'tk'

root = TkRoot.new
root.title = "The Most Glorious Game Ever"

def leave
	puts "Thanks for playing, see ya soon."
	exit
end

def level(img,but_leave,start)
	puts "Changing the picture"
        img.file = "Levelauswahl.gif"
		
	start.destroy
	
	#butns = []
	(0...10).each { |i|
		but = TkButton.new(root) {
			text "Level #{i+1}"
			command(proc {play(i+1)})
		}
		but.place('x' => (i/5+1)*img.width/3, 'y' => (i%5+1)*img.height/6)
		#butns << but
	}
end

def play(num)
	case num
	when 1
		puts "Starting Level One"
	else
		puts "Definitely not Level One"
	end
end

image = TkPhotoImage.new
image.file = "maxresdefault.gif"
root['geometry'] = "#{image.width}x#{image.height}-30+30"
#image.width /= 2
#image.height /= 2
lbl = TkLabel.new (root)
lbl.image = image
lbl.place('height'=>image.height,
	'width'=>image.width,
	'x'=>0,
	'y'=>0)
but = TkButton.new (root) {
	text "Quit"
	command (proc {leave})
}
but.place('x'=> image.width/2,
	'y'=> image.height/2+30)

levelauswahl = TkButton.new (root) {
	text "Level Auswahl"
	command (proc {level(image,but,levelauswahl)})
}
levelauswahl.place('x'=> image.width/2,
	'y'=> image.height/2)

Tk.mainloop
