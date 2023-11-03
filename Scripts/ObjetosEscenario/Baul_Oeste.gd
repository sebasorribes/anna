extends Interactable

func _ready():
	pass

func interact():
	var textito
	textito=[
		"Es un baul lleno de cachivaches inutiles."
	]
	Global.dialog=textito
	Global.hay_dialogo=true
