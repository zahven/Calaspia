require 'tk'

root = TkRoot.new
root.title = "The Most Glorious Game Ever"

def start 
	puts "Woops, someone pressed a button"
	exit
end
def res
	puts "Resolution: #{root['geometry']}"
end

msg = Proc.new {
	Tk.messageBox(
		'type' => "ok",
		'icon' => "info",
		'title' => "Title",
		'message' => "Message"
	)
}

image = TkPhotoImage.new
image.file = "world.gif"
root['geometry'] = "1440x750+0+25"
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

menu = TkMenu.new(root)
menu.add('command',
	'label' => "This is part of a menu",
	'command' => msg,
	'underline' => 1)
menu.add('command',
	'label' => "And so is this",
	'command' => msg,
	'underline' => -2)
dropdown = TkMenu.new
dropdown.add('cascade',
	'menu' => menu,
	'label' => "Press this")
root.menu(dropdown)
but2 = TkButton.new (root) {
	text "Options"
	command (proc {res})
}
but2.place('x'=> image.width/2+50,
	'y'=> image.height/2)
Tk.mainloop
