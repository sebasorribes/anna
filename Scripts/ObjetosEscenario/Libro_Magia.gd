extends Interactable

func _ready():
	pass

func interact():
	var textito
	textito=[
		"¡Ah, mi libro de recetas! Aquí está la receta para hacer una poción de invisibilidad. \n¡O tal vez sea para hacer un pastel de manzana, no lo recuerdo bien!"
	]
	Global.dialog=textito
	Global.hay_dialogo=true
	
