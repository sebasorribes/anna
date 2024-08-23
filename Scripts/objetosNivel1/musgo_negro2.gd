extends Interactable

var primera_interaccion
# Called when the node enters the scene tree for the first time.
func _ready():
	primera_interaccion=true


func interact():
	var textito
	if(primera_interaccion):
		textito=[
			"Bueno, supongo que hoy he logrado mi ración diaria de glamour mágico con este musgo de agua negra. \n¿Quién necesita jardines encantados cuando puedes tener alcantarillas mágicas?"
		]
		primera_interaccion=false
		Global.tiene_musgoAguaNegra=true
	else:
		textito=[
			"Quién diría que el lugar donde se encuentra este musgo es tan... ¿aromático?"
		]
	if(textito !=null):
		Global.dialog=textito
		Global.hay_dialogo=true
