require "tk"
require "sibyl"

# Declare the Tkinter window root:
root = TkRoot.new { title "Sibyl" }
#=====================================================#
#------------//  TRIGGER FUNCTIONS  //----------------#
#=====================================================#
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
center_x = (screen_width / 2 - window_x / 2)
center_y = (screen_height / 2 - window_y / 2)
root.geometry("#{window_x}x#{window_y}+#{center_x}+#{center_y}")
root.resizable(0, 0)
#=====================================================#
#------------//  ROOT MENU  //------------------------#
#=====================================================#
menubar = TkMenu.new(root)
filemenu = TkMenu.new(menubar)
filemenu.tearoff = false
menubar.add :cascade, :menu => filemenu, :label => "File"
filemenu.add :command, :label => "Exit", :command => proc { exit_app(root) }
filemenu.add :command, :label => "Say Hello", :command => proc { puts "hello" }
root.menu(menubar)
#=====================================================#
#------------//  ROOT GRAPHICS  //--------------------#
#=====================================================#
icon = TkPhotoImage.new("file" => "crystal.gif")
root.iconphoto(icon)
logo = TkPhotoImage.new
logo.file = "sibyl.gif"
#=====================================================#
#------------//  ROOT LAYOUT  //----------------------#
#=====================================================#
sin_frame = TkFrame.new(root) { # Left Frame
  grid("row" => 0, "column" => 0) #, 'rowspan'=>3)
  width 200
}
dex_frame = TkFrame.new(root) { # Right Frame
  grid("row" => 0, "column" => 1) #, 'rowspan'=>3)
  width 300
}
TkLabel.new(sin_frame) {
  text "Contacts:"
  grid("row" => 0, "column" => 0, "sticky" => "se")
}
TkLabel.new(dex_frame) {
  text "COL2"
  grid("row" => 0, "column" => 1)
}
TkLabel.new(dex_frame) {
  text "COL3"
  grid("row" => 0, "column" => 2)
}
TkLabel.new(dex_frame) {
  text "COL4"
  grid("row" => 0, "column" => 3)
}

listbox = TkListbox.new(sin_frame) {
  height 19
  selectmode "single"
  grid("row" => 1, "column" => 0, "rowspan" => 4)
}
listbox.insert 0, "one", "two", "three"
TkLabel.new(sin_frame) {
  image logo
  grid("row" => 0, "column" => 0, "sticky" => "sw")
}
#=====================================================#
#------------//  RUN THE APP  //----------------------#
#=====================================================#
Tk.mainloop
