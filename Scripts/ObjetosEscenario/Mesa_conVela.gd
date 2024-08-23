extends Interactable

func _ready():
	pass

func interact():
	var textito
	textito=[
		"Esta mesa parece más antigua que los cuentos de hadas. ¿Cuántas historias mágicas habrá presenciado? ¿Y cuántas tazas de té de hierbas ha sostenido en sus años?."
	]
	Global.dialog=textito
	Global.hay_dialogo=true
	
