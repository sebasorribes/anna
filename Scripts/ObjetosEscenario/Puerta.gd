extends Interactable

signal guardiasEntrando

func interact():
	if(Global.tiene_llave):
		guardiasEntrando.emit()
	else:
		var textito
		textito=[
			"No recuendo en que lugar deje la llave de la puerta, deberia realizar la pocion \"Encuentralo todo\" para encontrarla. \n Necesito un ingrediente vegetal, un ingrediente animal y un frasco donde colocarla"
		]
		Global.dialog=textito
		Global.hay_dialogo=true
