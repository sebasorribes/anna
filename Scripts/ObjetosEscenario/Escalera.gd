extends Interactable

var primera_interaccion : bool

func _ready():
	Global.tiene_aguaSucia=false
	primera_interaccion=true

func interact():
	if (primera_interaccion):
		var textito
		textito=[
			"¿Porque hay un vaso con agua sucia junto a la escalera?. \nNo importa, me sirve para utilizarlo como medio para una poción"
		]
		Global.tiene_aguaSucia=true
		primera_interaccion=false
		Global.dialog=textito
		Global.hay_dialogo=true
	else:
		var textito
		textito=[
			"Dicen que puedes ir y entrar a donde quieras cargando una escalera pero no creo que este sea el momento de probar esa teoria."
		]
		Global.dialog=textito
		Global.hay_dialogo=true
