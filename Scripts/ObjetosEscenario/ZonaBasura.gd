extends Interactable

func interact():
	var textito
	textito=[
		"Esta caja era una reliquia de la Edad Media, llena de objetos mágicos antiguos... hasta que intenté hacer una limpieza y la convertí en una pila de chatarra mágica. \n¡Oops!"
	]
	Global.dialog=textito
	Global.hay_dialogo=true
