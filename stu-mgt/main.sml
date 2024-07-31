fun applyCss () =
  let
    val screen = Gdk.Screen.getDefault ()
    val cssProvider = Gtk.CssProvider.new ()
    val _ = Gtk.CssProvider.loadFromPath cssProvider "main.css"
    val () =
      Gtk.StyleContext.addProviderForScreen
        (Option.valOf screen, Gtk.CssProvider.asStyleProvider cssProvider, Gtk.STYLE_PROVIDER_PRIORITY_USER)
  in
    ()
  end
    handle
      Option => GiraffeLog.critical "Error: could not get screen\n"
    | GLib.Error (_, error) => GiraffeLog.critical (#get GLib.Error.message error)

fun onButtonClicked optOverlay (widget : 'a Gtk.Button.class) () =
  let
    val label = Gtk.Button.getLabel widget
    val () = print (concat ["Button ", label, " Pressed", "\n"])
  in
    case optOverlay of
      SOME overlay =>
        let
          val visible = Gtk.Widget.getVisible overlay
          val () = Gtk.Widget.setVisible overlay (not visible)
        in
          ()
        end
    | NONE => ()
  end

fun getObject subclass builder name =
  case Gtk.Builder.getObject builder name of
    SOME object => GObject.ObjectClass.toDerived subclass object
  | NONE => Giraffe.error 1 ["Error getting builder object: \"", name, "\" not found\n"]

fun onActivate app () =
  let
    open Gtk

    val builder = Gtk.Builder.new ()
    val _ =
      Gtk.Builder.addFromFile builder "main.ui"
        handle
          GLib.Error (_, error) =>
            Giraffe.error 1 [#get GLib.Error.message error, "\n"]

    (* val _ =
      Gtk.Builder.addFromFile builder "teacher-ui.ui"
        handle
          GLib.Error (_, error) =>
            Giraffe.error 1 [#get GLib.Error.message error, "\n"] *) 

    val window = getObject ApplicationWindowClass.t builder "mainwin"
    val () = Window.setApplication window (SOME app)
    val () = Window.setTitle window "Student Manager System"
    (* val () = Window.setDefaultSize window (800, 800) *)

    (* Setup main box *)
    val main = getObject BoxClass.t builder "main"

    (* username *)
    val usernameBox = getObject BoxClass.t builder "usernameBox"
    val usernameLabel = Label.new (SOME "Username: \t")
    val usernameEntry = Entry.new ()
    val () = Container.add usernameBox usernameLabel
    val () = Container.add usernameBox usernameEntry
    val () = Widget.setHalign usernameBox Align.CENTER
    val () = Box.packStart main (usernameBox, true, true, 0)

    (* password *)
    val passwordBox = getObject BoxClass.t builder "passwordBox"
    val passwordLabel = Label.new (SOME "Password: \t")
    val passwordEntry = Entry.new ()
    val () = Container.add passwordBox passwordLabel
    val () = Container.add passwordBox passwordEntry
    val () = Widget.setHalign passwordBox Align.CENTER
    val () = Box.packStart main (passwordBox, true, true, 0)
    
    (* tipLabel *)
    (* val tipBox = getObject BoxClass.t builder "tipBox" *)
    val tipLabel = Label.new (SOME "Log In")
    (* val () = Container.add tipBox tipLabel *)
    (* val () = Widget.setHalign tipBox Align.CENTER *)
    val () = Box.packStart main (tipLabel, true, true, 0)

    val loginBtn =
      GObject.Object.new (
        ButtonClass.t,
        [
          Property.init Button.labelProp (SOME "Toggle Overlay"),
          Property.init Widget.valignProp Align.START,
          Property.init Widget.halignProp Align.CENTER
        ]
      )
    val () = Box.packStart main (loginBtn, true, true, 0)

    val _ = Signal.connect loginBtn (Button.clickedSig, fn () =>
      let
        val username = Gtk.Entry.getText usernameEntry
        val password = Gtk.Entry.getText passwordEntry
        (* val teacherwin = getObject ApplicationWindowClass.t builder "teacherwin" *)
      in
        print (concat ["Username: ", username, "\n", "Password: ", password, "\n"])
      end
    )



    val () = Widget.showAll main

    val () = applyCss ()
    val () = Window.present window
  in
    ()
  end

fun main () =
  let
    val app = Gtk.Application.new (SOME "dk.rasmil.gtk3csspimp", Gio.ApplicationFlags.FLAGS_NONE)
    val _ = Signal.connect app (Gio.Application.activateSig, onActivate app)

    val argv = Utf8CPtrArrayN.fromList (CommandLine.name () :: CommandLine.arguments ())
    val status = Gio.Application.run app argv
  in
    Giraffe.exit status
  end
    handle e => Giraffe.error 1 ["Uncaught exception\n", exnMessage e, "\n"]
