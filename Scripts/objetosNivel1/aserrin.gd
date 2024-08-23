extends Interactable

var primera_interaccion
# Called when the node enters the scene tree for the first time.
func _ready():
	primera_interaccion=true


func interact():
	var textito
	if(primera_interaccion):
		textito=[
			"Aserrín de un viejo poste, la nueva moda en la magia reciclada. Porque incluso los postes merecen una segunda oportunidad, ¿verdad?"
		]
		primera_interaccion=false
		Global.tiene_aserrin=true
	else:
		textito=[
			"Ya tengo mi cuota de aserrín vintage."
		]
	if(textito !=null):
		Global.dialog=textito
		Global.hay_dialogo=true
