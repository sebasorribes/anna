extends Interactable

var contador : int =0

func interact():
	var textito
	if (contador<3):
		textito=[
			"Cuando veo una cama me dan ganas de dormir todo el día",
			"Quizas pueda dormir 5 min...."
		]
		Global.dialog=textito
		Global.hay_dialogo=true
		contador+=1
	else:
		textito=[
			"NO NO NO NO. Tengo que hacer muchas cosas hoy."
		]
		Global.dialog=textito
		Global.hay_dialogo=true
