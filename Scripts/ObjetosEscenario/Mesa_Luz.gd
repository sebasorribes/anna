extends Interactable

func _ready():
	pass

func interact():
	var textito
	textito=[
		"Mi mesa de luz, el rincón de mis secretos mágicos. \nAquí guardo mis hechizos más preciados y mis recuerdos más queridos. Cada objeto en esta mesa tiene su propia historia mágica que contar."
	]
	Global.dialog=textito
	Global.hay_dialogo=true
	
