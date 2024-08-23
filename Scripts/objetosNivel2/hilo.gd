extends Interactable

var primera_interaccion

# Called when the node enters the scene tree for the first time.
func _ready():
	primera_interaccion=true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func interact():
	var textito
	if(primera_interaccion):
		textito=[
			"Hay un hilo salido en este colchón. Debería tratar de arrancarlo. \nEra más largo de lo que pensaba."
		]
		primera_interaccion=false
		Global.tiene_hilo=true
	else:
		textito=[
			"Bueno, parece que mi intento de sacar el hilo se convirtió en una escena de caos mágico."
		]
	if(textito !=null):
		Global.dialog=textito
		Global.hay_dialogo=true
