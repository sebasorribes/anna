extends Interactable

func _ready():
	pass

func interact():
	var textito
	textito=[
		"¡Una mesa encantada! ¿Quizás sirva cenas de medianoche con un toque de magia? ¿O simplemente es el lugar perfecto para jugar a las cartas con las sombras?"
	]
	Global.dialog=textito
	Global.hay_dialogo=true
