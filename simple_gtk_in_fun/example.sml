fun changeLabelButton label _ _ =
  Gtk.Label.setLabel label "Text set from button"

fun activate app () =
  let
    open Gtk

    val window = ApplicationWindow.new app
    val box = Box.new (Orientation.VERTICAL, 12)
    
    val button1 = Button.newWithLabel "Change Label Text"
    val actionGroup = Gio.SimpleActionGroup.new ()
    val label = Label.new (SOME "Initial Text")

    fun addSimpleAction (simpleAction, f) =
      let
        val action = Gio.SimpleAction.asAction simpleAction
        val _ = Signal.connect simpleAction (Gio.SimpleAction.activateSig, f label action)
        val () = Gio.ActionMap.addAction (Gio.SimpleActionGroup.asActionMap actionGroup) action
      in
        ()
      end

    val action = Gio.SimpleAction.new ("change-label-button", NONE)
    val () = addSimpleAction (action, changeLabelButton)

    val () =
      Widget.insertActionGroup window
        ("win", SOME (Gio.SimpleActionGroup.asActionGroup actionGroup))

    val () = Widget.setMarginTop label 12
    val () = Widget.setMarginBottom label 12
    val () = Container.add box label
    
    val () = Widget.setHalign button1 Align.CENTER
    val () = Actionable.setActionName (Button.asActionable button1) (SOME "win.change-label-button")
    val () = Container.add box button1
    val () = Container.add window box
    val () = Widget.showAll window
  in
    ()
  end

fun main () =
  let
    val app = Gtk.Application.new (SOME "org.gtk.example", Gio.ApplicationFlags.flags [])
    val id = Signal.connect app (Gio.Application.activateSig, activate app)

    val argv = Utf8CPtrArrayN.fromList (CommandLine.name () :: CommandLine.arguments ())
    val status = Gio.Application.run app argv

    val () = Signal.handlerDisconnect app id
  in
    Giraffe.exit status
  end
    handle e => Giraffe.error 1 ["Uncaught exception\n", exnMessage e, "\n"]
