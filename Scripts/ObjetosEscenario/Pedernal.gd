extends Interactable

var primera_interaccion : bool

func _ready():
	Global.tiene_pedernal=false
	primera_interaccion=true

func interact():
	if (primera_interaccion):
		var textito
		textito=[
			"¿Huesos? Espera, hay un pedernal ahi, puede ser util."
		]
		Global.tiene_pedernal=true
		primera_interaccion=false
		Global.dialog=textito
		Global.hay_dialogo=true
	else:
		var textito
		textito=[
			"Lo siento, queridos huesos. No era mi intención despojarlos de su preciado pedernal. Pero ahora, este pedernal tiene una cita con mi necesidad urgente de escapar. ¡Gracias por su comprensión postmortem!"
		]
		Global.dialog=textito
		Global.hay_dialogo=true
