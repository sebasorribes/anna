extends Interactable

var primera_interaccion
# Called when the node enters the scene tree for the first time.
func _ready():
	primera_interaccion=true


func interact():
	var textito
	if (primera_interaccion):
		textito=[
			"¿Huesos? Espera, hay un pedernal ahi, puede ser util."
		]
		Global.tiene_pedernal=true
		primera_interaccion=false
	else:
		textito=[
			"Lo siento, queridos huesos. No era mi intención despojarlos de su preciado pedernal. Pero ahora, este pedernal tiene una cita con mi necesidad urgente de escapar. ¡Gracias por su comprensión postmortem!"
	]
	if(textito !=null):
		Global.dialog=textito
		Global.hay_dialogo=true
