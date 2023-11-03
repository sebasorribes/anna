extends Interactable

var contador : int =0

func interact():
	var textito
	textito=[
		"Es mi viejo baul",
		"Lo tengo desde mis épocas en la academia mágica",
		"Mentira, nunca fui a ninguna academia, no creo que existan tampoco."
	]
	Global.dialog=textito
	Global.hay_dialogo=true
