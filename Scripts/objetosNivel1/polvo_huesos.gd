extends Interactable
var primera_interaccion

func _ready():
	primera_interaccion=true

func interact():
	var textito
	if(primera_interaccion):
		textito=[
			"Este esqueleto esta hecho polvo.... ¡polvo de huesos! como no me di cuenta"
		]
		primera_interaccion=false
		Global.tiene_polvoHueso=true
	else:
		textito=[
			"¡Listo, esqueleto! Ahora te ves mucho menos antiguo. ¡Quién diría que quitarte ese polvo te podria rejuvenecer tanto!"
		]
	
	if(textito!=null):
		Global.dialog=textito
		Global.hay_dialogo=true
