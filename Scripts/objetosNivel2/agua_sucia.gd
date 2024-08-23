extends Interactable

var primera_interaccion
# Called when the node enters the scene tree for the first time.
func _ready():
	primera_interaccion=true


func interact():
	var textito
	if (primera_interaccion):
		textito=[
			"¿Porque hay un vaso con agua sucia junto a la escalera?. \nNo importa, me sirve para utilizarlo como medio para una poción"
		]
		Global.tiene_aguaSucia=true
		primera_interaccion=false
	else:
		textito=[
			"Dicen que puedes ir y entrar a donde quieras cargando una escalera pero no creo que este sea el momento de probar esa teoria."
		]
	if(textito !=null):
		Global.dialog=textito
		Global.hay_dialogo=true
