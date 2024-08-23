extends Node

@onready var librero=$Escenario/Objetos/Librero/Area2D2
@onready var puerta=$Escenario/Objetos/Puerta/Area2D2
@onready var talks=$Talks

func _ready():
	$Music.play()
	Global.final_tutorial=false
	$Guardia1.visible=false
	$Guardia2.visible=false
	librero.toctocSignal.connect(toctoc)
	puerta.guardiasEntrando.connect(arresto)
	var texto=[
		"Tengo muchas cosas por hacer hoy, pero no recuerdo donde deje la llave de casa. \nDeberia realizar la pocion \"Encuentralo todo\" para encontrarla. Necesito un ingrediente vegetal, un ingrediente animal y un frasco donde colocarla. Luego utilizarla en la mi mesa de trabajo, seguramente en ese lugar puedo encontrar el frasco. "
	]
	Global.dialog=texto
	Global.hay_dialogo=true
	talks.next_text()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func animacion_llave():
	if(Global.tiene_pocion):
		pass #animacion destello.

func toctoc():
	if(Global.tiene_llave):
		$FX.stream=load("res://audio/door-knock cut.mp3")
		$FX.play()
		var textito
		textito=[
			"¿Quien golpea tan fuerte?."
		]
		Global.dialog=textito
		Global.hay_dialogo=true

func arresto():
	Global.tiene_llave=false
	$Guardia1.visible=true
	$Guardia2.visible=true
	var textito
	textito=[
		"Guardia: ¡QUIETA! Estas arrestada por el asesinato del rey. Vas a ser ejecutada por este crimen"
	]
	Global.final_tutorial=true
	Global.dialog=textito
	Global.hay_dialogo=true
