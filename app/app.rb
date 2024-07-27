require 'tk'
require 'sibyl'


root = TkRoot.new { title "Sibyl" }

def exit_app(main_window)
   main_window.destroy
end
#=====================================================#
#------------//  ROOT SIZE & PLACEMENT  //------------#
#=====================================================#
window_x = 500
window_y = 500
screen_width = root.winfo_screenwidth()
screen_height = root.winfo_screenheight()
center_x = (screen_width/2 - window_x/2)
center_y = (screen_height/2 - window_y/2)
root.geometry("#{window_x}x#{window_y}+#{center_x}+#{center_y}")
root.resizable(0, 0)
#=====================================================#
#------------//  ROOT MENU  //------------------------#
#=====================================================#
menubar = TkMenu.new(root)
filemenu = TkMenu.new(menubar)
filemenu.tearoff = false
menubar.add :cascade, :menu => filemenu, :label => 'File'
filemenu.add :command, :label => 'Exit', :command => proc{exit_app(root)}
filemenu.add :command, :label => 'Say Hello', :command => proc{puts "hello"}
root.menu(menubar)
#=====================================================#
#------------//  ROOT LAYOUT  //----------------------#
#=====================================================#
mainframe = TkFrame.new(root)
#=====================================================#
#------------//  ROOT GRAPHICS  //--------------------#
#=====================================================#
icon = TkPhotoImage.new('file' => 'crystal.gif')
root.iconphoto(icon)
image = TkPhotoImage.new
image.file = "sibyl.gif"
label = TkLabel.new(root)
label.image = image
label.grid('row'=>0, 'column'=>0)
label.place('height' => image.height, 
            'width' => image.width)
TkLabel.new(root) do
   text 'MAIN WINDOW'
   grid('row'=>0, 'column'=>1)
   pack { padx 15 ; pady 15; side 'right' }
end
listbox = TkListbox.new(root) do
   width 20
   height 50
   #setgrid 1
   selectmode 'single'
   pack('fill' => 'y')
end
listbox.insert 0, "one", "two", "three"
#=====================================================#
#------------//  RUN THE APP  //----------------------#
#=====================================================#
Tk.mainloop



