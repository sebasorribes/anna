extends Node

@onready var librero=$Escenario/Objetos/Librero
@onready var puerta=$Escenario/Objetos/Puerta

func _ready():
	Global.final_tutorial=false
	$Guardia1.visible=false
	$Guardia2.visible=false
	librero.toctocSignal.connect(toctoc)
	puerta.guardiasEntrando.connect(arresto)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func animacion_llave():
	if(Global.tiene_pocion):
		pass #animacion destello.

func toctoc():
	if(Global.tiene_llave):
		pass #sonido golpe puerta
		var textito
		textito=[
			"¿Quien golpea tan fuerte?."
		]
		Global.dialog=textito
		Global.hay_dialogo=true

func arresto():
	$Guardia1.visible=true
	$Guardia2.visible=true
	var textito
	textito=[
		"¡QUIETA! \nEstas arrestada por el asesinato del rey. Vas a ser ejecutada por este crimen"
	]
	Global.final_tutorial=true
	Global.dialog=textito
	Global.hay_dialogo=true
