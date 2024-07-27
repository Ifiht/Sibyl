require 'tk'
require 'sibyl'

root = TkRoot.new { title "Sibyl" }

screen_width = root.winfo_screenwidth()
screen_height = root.winfo_screenheight()
center_x = (screen_width/2 - 250)
center_y = (screen_height/2 - 250)
#root.geometry("500x500")
root.geometry("500x500+#{center_x}+#{center_y}")
root.resizable(0, 0)

icon = TkPhotoImage.new('file' => 'crystal.gif')
root.iconphoto(icon)

image = TkPhotoImage.new
image.file = "sibyl.gif"

label = TkLabel.new(root) 
label.image = image
label.place('height' => image.height, 
            'width' => image.width, 
            'x' => 97, 'y' => 97)
TkLabel.new(root) do
   text 'MAIN WINDOW'
   pack { padx 15 ; pady 15; side 'left' }
end

Tk.mainloop
