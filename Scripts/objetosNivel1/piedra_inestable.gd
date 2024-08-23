extends Interactable
var primera_interaccion

func _ready():
	primera_interaccion=true

func interact():
	var textito
	if(primera_interaccion):
		textito=[
			"¿Una piedra inestable de fusión en una vasija? Parece que alguien en este calabozo estaba jugando a ser alquimista."
		]
		primera_interaccion=false
		Global.tiene_piedraFusion=true
	else:
		textito=[
			"Parece que no hay nada más en esta vasija."
		]
	
	if(textito!=null):
		Global.dialog=textito
		Global.hay_dialogo=true
