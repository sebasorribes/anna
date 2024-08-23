extends Interactable

func _ready():
	pass

func interact():
	var textito
	textito=[
		"¡Un brasero! Porque cada hogar necesita un toque mágico de calidez. ¿Quizás también pueda usarse para lanzar hechizos de asado mágico?"
	]
	Global.dialog=textito
	Global.hay_dialogo=true
	
