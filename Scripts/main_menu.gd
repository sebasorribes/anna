extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

#al apretar el boton exit, sale del juego
func _on_exit_pressed():
	get_tree().quit()

#al apretar el boton play, carga el nivel de tutorial
func _on_play_pressed():
	get_tree().change_scene_to_file("res://Scene/tutorial.tscn")
