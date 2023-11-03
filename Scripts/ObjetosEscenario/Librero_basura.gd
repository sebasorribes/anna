extends Interactable

func _ready():
	pass

func interact():
	var textito
	textito=[
		"Tengo demasiada basura acumulada."
	]
	Global.dialog=textito
	Global.hay_dialogo=true

