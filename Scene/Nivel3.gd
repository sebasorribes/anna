extends Node

@onready var talks = $Talks
var contadorRespuestasCorrectas : int
var estatua_leida : bool
var respuesta : bool
var numero_acertijo
var ubicacion_respuesta
var el_sabio
var interaccionMuerte
var interaccionCodicia
var interaccionEsperanza

func _ready():
	$Music.play()
	$Timer.start()
	Global.final_nivel1=false
	Global.final_nivel2=false
	Global.final_nivel3=false
	$objetos/AnimationPlayer.play("down")
	ocutarGameOver()
	$objetos/sabio_muerte.hide()
	$objetos/sabio_muerte/CollisionShape2D.disabled=true
	$objetos/sabio_muerte/sabio_muerte/CollisionShape2D2.disabled=true
	$objetos/sabio_codicia.hide()
	$objetos/sabio_codicia/CollisionShape2D2.disabled=true
	$objetos/sabio_codicia/sabio_codicia/CollisionShape2D3.disabled=true
	$objetos/sabio_esperanza.hide()
	$objetos/sabio_esperanza/CollisionShape2D3.disabled=true
	$objetos/sabio_esperanza/sabio_esperanza/CollisionShape2D4.disabled=true
	$Respuestas_sabios.hide()
	interaccionMuerte=false
	interaccionCodicia=false
	interaccionEsperanza=false
	contadorRespuestasCorrectas = 0.
	estatua_leida=false
	var texto
	texto=[
		"¿Que es este lugar? Hace horas que estoy caminando y lo primero que encuentro es este extraño lugar. \n No se quien es el de la armadura pero se ve peligroso, mejor evitarlo"
	]
	Global.dialog=texto
	Global.hay_dialogo=true
	talks.next_text()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func interaction(objectName):
	var textito
	match (objectName):
		"diosa":
			textito=[
				"En la estatua esta escrito: 'Aquellos que de la etenidad desean escapar, a los sabios deben encontrar y sus pruebas superar.'"
			]
			$objetos/sabio_muerte.show()
			$objetos/sabio_muerte/CollisionShape2D.disabled=false
			$objetos/sabio_muerte/sabio_muerte/CollisionShape2D2.disabled=false
			$objetos/sabio_muerte/AnimatedSprite2D.play("default")
			$objetos/sabio_codicia.show()
			$objetos/sabio_codicia/CollisionShape2D2.disabled=false
			$objetos/sabio_codicia/sabio_codicia/CollisionShape2D3.disabled=false
			$objetos/sabio_codicia/AnimatedSprite2D.play("default")
			$objetos/sabio_esperanza.show()
			$objetos/sabio_esperanza/CollisionShape2D3.disabled=false
			$objetos/sabio_esperanza/sabio_esperanza/CollisionShape2D4.disabled=false
			$objetos/sabio_esperanza/AnimatedSprite2D.play("default")
		"sabio_muerte":
			if(!interaccionMuerte):
				textito=[
				"sabio de la muerte: Bienvenida joven que espera a la muerte. Si quieres superar mi prueba, debes responder"
				]
				interaccionMuerte=true
			else:
				acertijoMuerte()
		"sabio_codicia":
			if(!interaccionCodicia):
				textito=[
				"sabio de la codicia: Bienvenida joven que busca tesoros. Si quieres superar mi prueba debes responder"
				]
				interaccionCodicia=true
			else:
				acertijoCodicia()
		"sabio_esperanza":
			if(!interaccionEsperanza):
				textito=[
				"sabio de la esperanza: Bienvenida joven que espera escapar de sus penurias. Si quieres superar mi prueba debes responder"
				]
				interaccionEsperanza=true
			else:
				acertijoEsperanza()
		"monolitos":
			textito=[
				"No entiendo que dice pero esos simbolos se ven bonitos. Espero que no diga algo como 'sopa de pollo'"
			]
		"salida":
			if(contadorRespuestasCorrectas<3):
				textito=[
				"Siento como si me fuera a perder para siempre si salgo de este lugar en este momento"
				]
			else:
				textito=[
				"Creo que ya puedo salir de este lugar. Adios extraño lugar del tiempo, no voy a extrañarte."
				]
				Global.final_nivel3=true
		"cartel_izquierda":
			textito=[
				"Dice: Izquierda."
				]
		"cartel_derecha":
			textito=[
				"Dice: Derecha."
				]
		"piedra_gato":
			textito=[
				"Es la piedra más bonita que vi en mi vida."
				]
		"tumbas":
			textito=[
				"Estas tumbas están son tan antiguas que incluso los esqueletos están pensando en jubilarse."
				]
		"bancos":
			textito=[
				"Estos bancos de piedra son tan cómodos como un abrazo de esqueleto."
			]
		"pozo_roto":
			textito=[
				"Este pozo roto parece más una fuente de decepciones que una fuente de agua."
			]
		"lamparas_piedra":
			textito=[
				"Estas lámparas de piedra son la iluminación preferida para los que buscan un ambiente más 'rocoso' en sus hogares."
			]
		"tesoros":
			textito=[
				"Estos tesoros son un enigma. ¿Contienen riquezas infinitas, artefactos olvidados o simplemente una gran cantidad de preguntas sin respuesta?"
			]
		"basura":
			textito=[
				"Estas cajas y barriles rotos parecen una obra de arte moderno "
			]
	if(textito !=null):
		Global.dialog=textito
		Global.hay_dialogo=true

func acertijoMuerte():
	var temporal=randi_range(1,6)
	numero_acertijo=temporal
	el_sabio=1
	
	match (numero_acertijo):
		1:
			$Respuestas_sabios/TextureRect/RichTextLabel.text="¿Qué es algo que todos compartimos, pero que solo tú puedes perder?"
			$Respuestas_sabios/respuesta1.text= "El tiempo."
			$Respuestas_sabios/respuesta2.text= "La confianza."
			$Respuestas_sabios/respuesta3.text= "La vida." #
			ubicacion_respuesta=3
		2:
			$Respuestas_sabios/TextureRect/RichTextLabel.text="En la oscuridad me encuentro, pero nunca soy una sombra. Me sigues siempre, pero nunca me alcanzas. ¿Qué soy?"
			$Respuestas_sabios/respuesta1.text= "La tristeza"
			$Respuestas_sabios/respuesta2.text= "Un recuerdo."
			$Respuestas_sabios/respuesta3.text= "El futuro." #
			ubicacion_respuesta=3
		3:
			$Respuestas_sabios/TextureRect/RichTextLabel.text="Soy un suspiro eterno, el final de la vida. Sin luz ni sombra, marco el paso del tiempo. ¿Quién soy?"
			$Respuestas_sabios/respuesta3.text= "La oscuridad."
			$Respuestas_sabios/respuesta2.text= "El silencio."
			$Respuestas_sabios/respuesta1.text= "La sombra." #
			ubicacion_respuesta=1
		4:
			$Respuestas_sabios/TextureRect/RichTextLabel.text="Acompaño cada latido, pero cuando me llega mi momento, todo se detiene. Soy la única certeza en la vida, pero muchos me temen. ¿Quién soy?"
			$Respuestas_sabios/respuesta1.text= "La pausa."
			$Respuestas_sabios/respuesta2.text= "El final." #
			$Respuestas_sabios/respuesta3.text= "La quietud."
			ubicacion_respuesta=2
		5:
			$Respuestas_sabios/TextureRect/RichTextLabel.text="Soy la única certeza en esta vida, el destino final de cada ser. ¿Qué soy?"
			$Respuestas_sabios/respuesta1.text= "La noche."
			$Respuestas_sabios/respuesta2.text= "El invierno."
			$Respuestas_sabios/respuesta3.text= "La muerte." #
			ubicacion_respuesta=3
		6:
			$Respuestas_sabios/TextureRect/RichTextLabel.text="Soy un destino inevitable, la última estación en el viaje de la existencia. Todos me enfrentan, pero pocos me comprenden. ¿Qué soy?"
			$Respuestas_sabios/respuesta1.text= "Un adiós."
			$Respuestas_sabios/respuesta2.text= "El ocaso."#
			$Respuestas_sabios/respuesta3.text= "El olvido." 
			ubicacion_respuesta=2
	$Respuestas_sabios.show()

func acertijoCodicia():
	var temporal=randi_range(1,6)
	numero_acertijo=temporal
	el_sabio=2
	
	match (numero_acertijo):
		1:
			$Respuestas_sabios/TextureRect/RichTextLabel.text="¿Soy deseado por muchos, pero poseído por pocos. Cuanto más tienes de mí, más quieres, pero si me comparten, mi valor se reduce. ¿Qué soy?"
			$Respuestas_sabios/respuesta1.text="La riqueza."
			$Respuestas_sabios/respuesta2.text= "El oro."
			$Respuestas_sabios/respuesta3.text= "La ambición." 
			ubicacion_respuesta=2
		2:
			$Respuestas_sabios/TextureRect/RichTextLabel.text="Soy un agujero sin fondo, siempre se busca llenarme, pero nunca se satisface. ¿Qué soy?"
			$Respuestas_sabios/respuesta1.text= "El deseo."
			$Respuestas_sabios/respuesta2.text= "La fortuna."
			$Respuestas_sabios/respuesta3.text= "La avaricia." 
			ubicacion_respuesta=3
		3:
			$Respuestas_sabios/TextureRect/RichTextLabel.text="Me encuentras en todos los corazones, pero no en todas las mentes. Quienes me buscan a menudo pierden la razón. ¿Qué soy?"
			$Respuestas_sabios/respuesta3.text= "La envidia."
			$Respuestas_sabios/respuesta2.text= "La lujuria."
			$Respuestas_sabios/respuesta1.text= "La codicia." 
			ubicacion_respuesta=1
		4:
			$Respuestas_sabios/TextureRect/RichTextLabel.text="Nunca estoy satisfecho, siempre quiero más. Me encuentras en los ojos de muchos, pero pocos me reconocen. ¿Qué soy?"
			$Respuestas_sabios/respuesta1.text= "El poder."
			$Respuestas_sabios/respuesta2.text= "El descontento."
			$Respuestas_sabios/respuesta3.text= "La codicia."
			ubicacion_respuesta=3
		5:
			$Respuestas_sabios/TextureRect/RichTextLabel.text="Quien me tiene, desea compartirme, pero quien me comparte, rara vez me posee de nuevo. ¿Qué soy?"
			$Respuestas_sabios/respuesta1.text= "El tesoro."
			$Respuestas_sabios/respuesta2.text= "El egoísmo."
			$Respuestas_sabios/respuesta3.text= "La ambición." 
			ubicacion_respuesta=1
		6:
			$Respuestas_sabios/TextureRect/RichTextLabel.text="Soy una cadena que ata al corazón y una llave que abre la bóveda del deseo. Quienes me buscan a menudo encuentran dolor en su búsqueda. ¿Qué soy?"
			$Respuestas_sabios/respuesta1.text= "La ambición desmedida."
			$Respuestas_sabios/respuesta2.text= "La codicia sin límites."#
			$Respuestas_sabios/respuesta3.text= "El anhelo eterno." 
			ubicacion_respuesta=2
	$Respuestas_sabios.show()

func acertijoEsperanza():
	var temporal=randi_range(1,6)
	numero_acertijo=temporal
	el_sabio=3
	
	match (numero_acertijo):
		1:
			$Respuestas_sabios/TextureRect/RichTextLabel.text="Soy el alba después de la noche oscura, la promesa de un nuevo día. ¿Qué soy?"
			$Respuestas_sabios/respuesta1.text="La luz."
			$Respuestas_sabios/respuesta2.text= "El amanecer."
			$Respuestas_sabios/respuesta3.text= "La aurora." 
			ubicacion_respuesta=1
		2:
			$Respuestas_sabios/TextureRect/RichTextLabel.text="Soy el susurro del viento que anuncia la primavera, la renovación de la naturaleza. ¿Qué soy?"
			$Respuestas_sabios/respuesta1.text= "El renacimiento."
			$Respuestas_sabios/respuesta2.text= "La floración."
			$Respuestas_sabios/respuesta3.text= "El despertar." 
			ubicacion_respuesta=2
		3:
			$Respuestas_sabios/TextureRect/RichTextLabel.text="Navego en las lágrimas pero florezco en la risa. Aunque a menudo me buscan en momentos oscuros, siempre traigo consuelo. ¿Qué soy?"
			$Respuestas_sabios/respuesta3.text= "El consuelo."
			$Respuestas_sabios/respuesta2.text= "El alivio."
			$Respuestas_sabios/respuesta1.text= "La esperanza." 
			ubicacion_respuesta=3
		4:
			$Respuestas_sabios/TextureRect/RichTextLabel.text="Soy un faro en la tormenta, la estrella que guía en la noche más oscura. ¿Qué soy?"
			$Respuestas_sabios/respuesta1.text= "La guía."
			$Respuestas_sabios/respuesta2.text= "El faro."
			$Respuestas_sabios/respuesta3.text= "La estrella."
			ubicacion_respuesta=3
		5:
			$Respuestas_sabios/TextureRect/RichTextLabel.text="Aunque soy invisible, siempre estoy presente. Soy el eco de los sueños y el reflejo de la fe. ¿Qué soy?"
			$Respuestas_sabios/respuesta1.text= "La fe."
			$Respuestas_sabios/respuesta2.text= "El eco."
			$Respuestas_sabios/respuesta3.text= "La visión." 
			ubicacion_respuesta=1
		6:
			$Respuestas_sabios/TextureRect/RichTextLabel.text="Soy la semilla que germina en la adversidad, la fuerza que persiste en la tormenta. ¿Qué soy?"
			$Respuestas_sabios/respuesta1.text= "La perseverancia."
			$Respuestas_sabios/respuesta2.text= "La fortaleza."#
			$Respuestas_sabios/respuesta3.text= "El coraje." 
			ubicacion_respuesta=2
	$Respuestas_sabios.show()

func responderMuerte(opcion):
	if(opcion==ubicacion_respuesta):
		contadorRespuestasCorrectas+=1
		$objetos/sabio_muerte.queue_free()
	$Respuestas_sabios.hide()

func responderCodicia(opcion):
	if(opcion==ubicacion_respuesta):
		contadorRespuestasCorrectas+=1
		$objetos/sabio_codicia.queue_free()
	$Respuestas_sabios.hide()

func responderEsperanza(opcion):
	if(opcion==ubicacion_respuesta):
		contadorRespuestasCorrectas+=1
		$objetos/sabio_esperanza.queue_free()
	$Respuestas_sabios.hide()

func _on_respuesta_1_pressed():
	if(el_sabio==1):
		responderMuerte(1)
	elif(el_sabio==2):
		responderCodicia(1)
	elif(el_sabio==3):
		responderEsperanza(1)
	resume_player()


func _on_respuesta_2_pressed():
	if(el_sabio==1):
		responderMuerte(2)
	elif(el_sabio==2):
		responderCodicia(2)
	elif(el_sabio==3):
		responderEsperanza(2)
	resume_player()


func _on_respuesta_3_pressed():
	if(el_sabio==1):
		responderMuerte(3)
	elif(el_sabio==2):
		responderCodicia(3)
	elif(el_sabio==3):
		responderEsperanza(3)
	resume_player()


func _on_guard_game_over():
	mostrarGameOver()

func ocutarGameOver():
	$Game_over.visible=false
	Engine.time_scale=1
	$Game_over/menu.disabled=true
	$Game_over/retry.disabled=true
	$objetos/AnimationPlayer/guard.set_process(true)
	$objetos/AnimationPlayer/guard.set_physics_process(true)
	$Player.set_process(true)
	$Player.set_physics_process(true)

func mostrarGameOver():
	$Music.stop()
	$Game_over.visible=true
	Engine.time_scale=0
	$Game_over/menu.disabled=false
	$Game_over/retry.disabled=false
	$objetos/AnimationPlayer/guard.set_process(false)
	$objetos/AnimationPlayer/guard.set_physics_process(false)
	$Player.set_process(false)
	$Player.set_physics_process(false)


func _on_animation_player_animation_finished(anim_name):
	$Timer.start()


func resume_player():
	get_node("Player").set_physics_process(true)
	get_node("Player").get_child(2).set_process(true)
	get_node("Player").get_child(3).set_process(true)
	get_node("Player").get_child(4).set_process(true)
	get_node("Player").get_child(5).set_process(true)

func pausePlayer():
	get_node("Player").set_physics_process(false)
	get_node("Player").get_child(2).set_process(false)
	get_node("Player").get_child(3).set_process(false)
	get_node("Player").get_child(4).set_process(false)
	get_node("Player").get_child(5).set_process(false)

func _on_left_guard_detection_game_over():
	mostrarGameOver()

func _on_up_guard_detection_game_over():
	mostrarGameOver()

func _on_down_guard_detection_game_over():
	mostrarGameOver()
