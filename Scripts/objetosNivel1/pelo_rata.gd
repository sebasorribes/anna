extends Interactable

var primera_interaccion
# Called when the node enters the scene tree for the first time.
func _ready():
	primera_interaccion=true


func interact():
	var textito
	if(primera_interaccion):
		textito=[
			"Pelo de rata, me lo voy a llevar."
		]
		primera_interaccion=false
		Global.tiene_peloRata=true
	else:
		textito=[
			"Me acabo de dar cuenta que suelo utilizar muchos ingredientes que provienen de las ratas."
		]
	if(textito !=null):
		Global.dialog=textito
		Global.hay_dialogo=true
