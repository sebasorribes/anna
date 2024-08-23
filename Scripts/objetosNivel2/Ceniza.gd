extends Interactable

var primera_interaccion

func _ready():
	primera_interaccion=true


func interact():
	var textito
	if(primera_interaccion):
		textito=[
			"No es precisamente polvo de hadas, pero quién sabe, ¡quizás pueda hacer magia de alguna manera!."
		]
		primera_interaccion=false
		Global.tiene_ceniza=true
	else:
		textito=[
			"Por el bien de mi cordura y la higiene de mis manos, creo que dejaré la ceniza donde está."
		]
	if(textito !=null):
		Global.dialog=textito
		Global.hay_dialogo=true
