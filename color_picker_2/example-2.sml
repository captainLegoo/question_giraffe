fun activate app () =
  let
    open Gtk

    val window = ApplicationWindow.new app
    val () = Window.setTitle window "Window"
    val () = Container.setBorderWidth window 100

    val grid = Grid.new ()

    val args = CommandLine.arguments ()

    val () = Container.add window grid

    val textLabel = Label.new (SOME "Color")
    val () = Grid.attach grid (textLabel, 0, 0, 9, 1)

    val newLine = Label.new (SOME "")
    val () = Grid.attach grid (newLine, 0, 1, 9, 1)

    (* ==================Blue============================= *)

    val color_blue_1 = Gdk.Rgba.new {red = 0.0, green = 0.0, blue = 1.0, alpha = 0.3}
    val color_button_blue_1 = Gtk.ColorButton.newWithRgba(color_blue_1)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_blue_1 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_blue_1),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_blue_1, 0, 2, 1, 1)

    val color_blue_2 = Gdk.Rgba.new {red = 0.0, green = 0.1, blue = 1.0, alpha = 0.5}
    val color_button_blue_2 = Gtk.ColorButton.newWithRgba(color_blue_2)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_blue_2 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_blue_2),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_blue_2, 1, 2, 1, 1)

    val color_blue_3 = Gdk.Rgba.new {red = 0.0, green = 0.0, blue = 1.0, alpha = 0.7}
    val color_button_blue_3 = Gtk.ColorButton.newWithRgba(color_blue_3)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_blue_3 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_blue_3),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_blue_3, 2, 2, 1, 1)

    val color_blue_4 = Gdk.Rgba.new {red = 0.0, green = 0.0, blue = 1.0, alpha = 0.8}
    val color_button_blue_4 = Gtk.ColorButton.newWithRgba(color_blue_4)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_blue_4 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_blue_4),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_blue_4, 3, 2, 1, 1)

    val color_blue_5 = Gdk.Rgba.new {red = 0.0, green = 0.0, blue = 1.0, alpha = 0.9}
    val color_button_blue_5 = Gtk.ColorButton.newWithRgba(color_blue_5)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_blue_5 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_blue_5),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_blue_5, 4, 2, 1, 1)

    val color_blue_6 = Gdk.Rgba.new {red = 0.0, green = 0.0, blue = 1.0, alpha = 1.0}
    val color_button_blue_6 = Gtk.ColorButton.newWithRgba(color_blue_6)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_blue_6 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_blue_6),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_blue_6, 5, 2, 1, 1)

    (* ==================Green============================= *)

    val color_green_1 = Gdk.Rgba.new {red = 0.0, green = 1.0, blue =0.0, alpha = 0.3}
    val color_button_green_1 = Gtk.ColorButton.newWithRgba(color_green_1)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_green_1 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_green_1),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_green_1, 0, 3, 1, 1)

    val color_green_2 = Gdk.Rgba.new {red = 0.0, green = 1.0, blue =0.0, alpha = 0.5}
    val color_button_green_2 = Gtk.ColorButton.newWithRgba(color_green_2)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_green_2 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_green_2),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_green_2, 1, 3, 1, 1)

    val color_green_3 = Gdk.Rgba.new {red = 0.0, green = 1.0, blue =0.0, alpha = 0.7}
    val color_button_green_3 = Gtk.ColorButton.newWithRgba(color_green_3)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_green_3 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_green_3),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_green_3, 2, 3, 1, 1)

    val color_green_4 = Gdk.Rgba.new {red = 0.0, green = 1.0, blue =0.0, alpha = 0.8}
    val color_button_green_4 = Gtk.ColorButton.newWithRgba(color_green_4)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_green_4 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_green_4),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_green_4, 3, 3, 1, 1)

    val color_green_5 = Gdk.Rgba.new {red = 0.0, green = 1.0, blue =0.0, alpha = 0.9}
    val color_button_green_5 = Gtk.ColorButton.newWithRgba(color_green_5)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_green_5 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_green_5),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_green_5, 4, 3, 1, 1)

    val color_green_6 = Gdk.Rgba.new {red = 0.0, green = 1.0, blue =0.0, alpha = 1.0}
    val color_button_green_6 = Gtk.ColorButton.newWithRgba(color_green_6)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_green_6 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_green_6),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_green_6, 5, 3, 1, 1)

    
    (* =======================Yellow================================== *)


    val color_yellow_1 = Gdk.Rgba.new {red = 1.0, green = 1.0, blue =0.0, alpha = 0.3}
    val color_button_yellow_1 = Gtk.ColorButton.newWithRgba(color_yellow_1)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_yellow_1 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_yellow_1),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_yellow_1, 0, 4, 1, 1)

    val color_yellow_2 = Gdk.Rgba.new {red = 1.0, green = 1.0, blue =0.0, alpha = 0.5}
    val color_button_yellow_2 = Gtk.ColorButton.newWithRgba(color_yellow_2)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_yellow_2 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_yellow_1),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_yellow_2, 1, 4, 1, 1)

    val color_yellow_3 = Gdk.Rgba.new {red = 1.0, green = 1.0, blue =0.0, alpha = 0.7}
    val color_button_yellow_3 = Gtk.ColorButton.newWithRgba(color_yellow_3)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_yellow_3 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_yellow_3),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_yellow_3, 2, 4, 1, 1)

    val color_yellow_4 = Gdk.Rgba.new {red = 1.0, green = 1.0, blue =0.0, alpha = 0.8}
    val color_button_yellow_4 = Gtk.ColorButton.newWithRgba(color_yellow_4)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_yellow_4 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_yellow_4),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_yellow_4, 3, 4, 1, 1)

    val color_yellow_5 = Gdk.Rgba.new {red = 1.0, green = 1.0, blue =0.0, alpha = 0.9}
    val color_button_yellow_5 = Gtk.ColorButton.newWithRgba(color_yellow_5)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_yellow_5 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_yellow_5),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_yellow_5, 4, 4, 1, 1)

    val color_yellow_6 = Gdk.Rgba.new {red = 1.0, green = 1.0, blue =0.0, alpha = 1.0}
    val color_button_yellow_6 = Gtk.ColorButton.newWithRgba(color_yellow_6)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_yellow_6 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_yellow_6),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_yellow_6, 5, 4, 1, 1)

    (* ===================Orange================================= *)

    val color_orange_1 = Gdk.Rgba.new {red = 0.996, green = 0.792, blue =0.475, alpha = 0.3}
    val color_button_orange_1 = Gtk.ColorButton.newWithRgba(color_orange_1)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_orange_1 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_orange_1),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_orange_1, 0, 5, 1, 1)

    val color_orange_2 = Gdk.Rgba.new {red = 0.992, green = 0.667, blue =0.333, alpha = 0.5}
    val color_button_orange_2 = Gtk.ColorButton.newWithRgba(color_orange_2)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_orange_2 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_orange_2),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_orange_2, 1, 5, 1, 1)

    val color_orange_3 = Gdk.Rgba.new {red = 0.992, green = 0.604, blue =0.255, alpha = 0.7}
    val color_button_orange_3 = Gtk.ColorButton.newWithRgba(color_orange_3)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_orange_3 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_orange_3),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_orange_3, 2, 5, 1, 1)

    val color_orange_4 = Gdk.Rgba.new {red = 1.0, green = 0.604, blue =0.255, alpha = 0.8}
    val color_button_orange_4 = Gtk.ColorButton.newWithRgba(color_orange_4)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_orange_4 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_orange_4),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_orange_4, 3, 5, 1, 1)

    val color_orange_5 = Gdk.Rgba.new {red = 1.0, green = 0.533, blue =0.118, alpha = 0.9}
    val color_button_orange_5 = Gtk.ColorButton.newWithRgba(color_orange_5)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_orange_5 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_orange_5),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_orange_5, 4, 5, 1, 1)

    val color_orange_6 = Gdk.Rgba.new {red = 1.0, green = 0.365, blue =0.063, alpha = 1.0}
    val color_button_orange_6 = Gtk.ColorButton.newWithRgba(color_orange_6)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_orange_6 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_orange_6),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_orange_6, 5, 5, 1, 1)

    (* ===================Red============================== *)

    val color_red_1 = Gdk.Rgba.new {red = 1.0, green = 0.796, blue = 0.796, alpha = 0.3}
    val color_button_red_1 = Gtk.ColorButton.newWithRgba(color_red_1)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_red_1 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_red_1),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_red_1, 0, 6, 1, 1)

    val color_red_2 = Gdk.Rgba.new {red = 1.0, green = 0.502, blue = 0.502, alpha = 0.5}
    val color_button_red_2 = Gtk.ColorButton.newWithRgba(color_red_2)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_red_2 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_red_2),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_red_2, 1, 6, 1, 1)

    val color_red_3 = Gdk.Rgba.new {red = 1.0, green = 0.0, blue = 0.0, alpha = 0.7}
    val color_button_red_3 = Gtk.ColorButton.newWithRgba(color_red_3)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_red_3 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_red_3),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_red_3, 2, 6, 1, 1)

    val color_red_4 = Gdk.Rgba.new {red = 0.545, green = 0.0, blue = 0.0, alpha = 0.8}
    val color_button_red_4 = Gtk.ColorButton.newWithRgba(color_red_4)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_red_4 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_red_4),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_red_4, 3, 6, 1, 1)

    val color_red_5 = Gdk.Rgba.new {red = 0.545, green = 0.0, blue = 0.0, alpha = 0.9}
    val color_button_red_5 = Gtk.ColorButton.newWithRgba(color_red_5)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_red_5 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_red_5),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_red_5, 4, 6, 1, 1)

    val color_red_6 = Gdk.Rgba.new {red = 0.545, green = 0.0, blue = 0.0, alpha = 1.0}
    val color_button_red_6 = Gtk.ColorButton.newWithRgba(color_red_6)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_red_6 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_red_6),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_red_6, 5, 6, 1, 1)

    (* ======================Purple========================= *)

    val color_purple_1 = Gdk.Rgba.new {red = 0.416, green = 0.051, blue = 0.678, alpha = 0.3}
    val color_button_purple_1 = Gtk.ColorButton.newWithRgba(color_purple_1)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_purple_1 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_purple_1),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_purple_1, 0, 7, 1, 1)

    val color_purple_2 = Gdk.Rgba.new {red = 0.416, green = 0.051, blue = 0.678, alpha = 0.5}
    val color_button_purple_2 = Gtk.ColorButton.newWithRgba(color_purple_2)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_purple_2 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_purple_2),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_purple_2, 1, 7, 1, 1)

    val color_purple_3 = Gdk.Rgba.new {red = 0.416, green = 0.051, blue = 0.678, alpha = 0.7}
    val color_button_purple_3 = Gtk.ColorButton.newWithRgba(color_purple_3)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_purple_3 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_purple_3),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_purple_3, 2, 7, 1, 1)

    val color_purple_4 = Gdk.Rgba.new {red = 0.416, green = 0.051, blue = 0.678, alpha = 0.8}
    val color_button_purple_4 = Gtk.ColorButton.newWithRgba(color_purple_4)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_purple_4 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_purple_4),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_purple_4, 3, 7, 1, 1)

    val color_purple_5 = Gdk.Rgba.new {red = 0.416, green = 0.051, blue = 0.678, alpha = 0.9}
    val color_button_purple_5 = Gtk.ColorButton.newWithRgba(color_purple_5)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_purple_5 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_purple_5),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_purple_5, 4, 7, 1, 1)

    val color_purple_6 = Gdk.Rgba.new {red = 0.416, green = 0.051, blue = 0.678, alpha = 1.0}
    val color_button_purple_6 = Gtk.ColorButton.newWithRgba(color_purple_6)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_purple_6 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_purple_6),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_purple_6, 5, 7, 1, 1)

    (* ====================White========================= *)

    val color_white_1 = Gdk.Rgba.new {red = 1.0, green = 1.0, blue = 0.941, alpha = 0.3}
    val color_button_white_1 = Gtk.ColorButton.newWithRgba(color_white_1)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_white_1 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_white_1),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_white_1, 0, 8, 1, 1)

    val color_white_2 = Gdk.Rgba.new {red = 0.961, green = 0.961, blue = 0.863, alpha = 0.5}
    val color_button_white_2 = Gtk.ColorButton.newWithRgba(color_white_2)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_white_2 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_white_2),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_white_2, 1, 8, 1, 1)

    val color_white_3 = Gdk.Rgba.new {red = 1.0, green = 0.961, blue = 0.941, alpha = 0.7}
    val color_button_white_3 = Gtk.ColorButton.newWithRgba(color_white_3)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_white_3 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_white_3),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_white_3, 2, 8, 1, 1)

    val color_white_4 = Gdk.Rgba.new {red = 1.0, green = 0.98, blue = 0.98, alpha = 0.8}
    val color_button_white_4 = Gtk.ColorButton.newWithRgba(color_white_4)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_white_4 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_white_4),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_white_4, 3, 8, 1, 1)

    val color_white_5 = Gdk.Rgba.new {red = 1.0, green = 1.0, blue = 1.0, alpha = 0.9}
    val color_button_white_5 = Gtk.ColorButton.newWithRgba(color_white_5)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_white_5 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_white_5),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_white_5, 4, 8, 1, 1)

    val color_white_6 = Gdk.Rgba.new {red = 1.0, green = 1.0, blue = 1.0, alpha = 1.0}
    val color_button_white_6 = Gtk.ColorButton.newWithRgba(color_white_6)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_white_6 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_white_6),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_white_6, 5, 8, 1, 1)

    (* ====================Black========================= *)

    val color_black_1 = Gdk.Rgba.new {red = 0.047, green = 0.016, blue = 0.016, alpha = 0.3}
    val color_button_black_1 = Gtk.ColorButton.newWithRgba(color_black_1)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_black_1 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_black_1),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_black_1, 0, 9, 1, 1)

    val color_black_2 = Gdk.Rgba.new {red = 0.0, green = 0.0, blue = 0.0, alpha = 0.3}
    val color_button_black_2 = Gtk.ColorButton.newWithRgba(color_black_2)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_black_2 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_black_2),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_black_2, 1, 9, 1, 1)

    val color_black_3 = Gdk.Rgba.new {red = 0.239, green = 0.047, blue = 0.008, alpha = 0.5}
    val color_button_black_3 = Gtk.ColorButton.newWithRgba(color_black_3)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_black_3 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_black_3),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_black_3, 2, 9, 1, 1)

    val color_black_4 = Gdk.Rgba.new {red = 0.255, green = 0.22, blue = 0.224, alpha = 0.7}
    val color_button_black_4 = Gtk.ColorButton.newWithRgba(color_black_4)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_black_4 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_black_4),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_black_4, 3, 9, 1, 1)

    val color_black_5 = Gdk.Rgba.new {red = 0.298, green = 0.275, blue = 0.275, alpha = 0.8}
    val color_button_black_5 = Gtk.ColorButton.newWithRgba(color_black_5)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_black_5 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_black_5),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_black_5, 4, 9, 1, 1)

    val color_black_6 = Gdk.Rgba.new {red = 0.275, green = 0.243, blue = 0.247, alpha = 0.9}
    val color_button_black_6 = Gtk.ColorButton.newWithRgba(color_black_6)
    (* val _ = Signal.connect color_button (Gtk.ColorButton.activate false) *)
    val _ = Signal.connect color_button_black_6 (Button.clickedSig, fn() => 
      print (  
         concat [
           "selected color: ",
           Gdk.Rgba.toString(color_black_6),
           "\n"
         ]
       )
    )
    val () = Grid.attach grid (color_button_black_6, 5, 9, 1, 1)

    val () = Widget.showAll window
  in
    (
    )
  end


fun main () =
  let
    val args = CommandLine.arguments ()
    val app = Gtk.Application.new (SOME "org.gtk.example", Gio.ApplicationFlags.FLAGS_NONE)
    val id = Signal.connect app (Gio.Application.activateSig, activate app)
    
    val argv = Utf8CPtrArrayN.fromList args
    val status = Gio.Application.run app argv

    val () = Signal.handlerDisconnect app id


  in
    ()
  end
    handle e => Giraffe.error 1 ["Uncaught exception\n", exnMessage e, "\n"]



