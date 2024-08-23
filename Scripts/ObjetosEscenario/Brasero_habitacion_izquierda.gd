extends Interactable

func _ready():
	pass

func interact():
	var textito
	textito=[
		"Este brasero es tan encantador que hasta las llamas parecen bailar al ritmo de una melodía misteriosa."
	]
	Global.dialog=textito
	Global.hay_dialogo=true
	
