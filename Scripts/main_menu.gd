extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	$Music.play()
	if(OS.get_name() == "Windows"): print("gatp")

#al apretar el boton exit, sale del juego
func _on_exit_pressed():
	get_tree().quit()

#al apretar el boton play, carga el nivel de tutorial
func _on_play_pressed():
	get_tree().change_scene_to_file("res://Scene/tutorial.tscn")


func _on_credits_pressed():
	$Credits_panel.show()
	$main_panel.hide()


func _on_button_pressed():
	$Credits_panel.hide()
	$main_panel.show()
