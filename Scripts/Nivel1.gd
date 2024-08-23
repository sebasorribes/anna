extends Node

func _ready():
	$Music.play()
	Global.tiene_musgoAguaNegra=false
	Global.tiene_polvoHueso=false
	Global.tiene_aserrin= false
	Global.tiene_medioToxico=false
	Global.tiene_pociontoxica=false
	Global.tiene_hongoAlucinogeno=false
	Global.tiene_cera = false
	Global.tiene_hiervaMontania=false
	Global.tiene_mediaAlucinacion=false
	Global.tiene_pocionAlucinogena=false
	Global.tiene_aceite= false
	Global.tiene_licor=false
	Global.tiene_polvoNegro=false
	Global.tiene_mediaSonora=false
	Global.tiene_pocionSonora=false
	Global.tiene_aguaContaminada=false
	Global.tiene_peloRata=false
	Global.tiene_lenguaRana=false
	Global.tiene_mediaRatificadora=false
	Global.tiene_pocionRatificadora=false
	Global.tiene_piedraFusion=false
	Global.tiene_miel3=false
	Global.tiene_cardo3=false
	Global.tiene_mediaCongelante=false
	Global.tiene_pocionCongelante=false
	Global.final_nivel1=false
	Global.final_nivel2=false
	Global.final_nivel3=false
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func interaction(objectName):
	var textito
	
	match objectName:
		"piedra_basura4":
			textito=[
					"Parece que estos feretros de piedra han tenido un mal día... o un mal milenio. ¡Quizás deberíamos llamar al servicio de reparación de tumbas!"
				]
		"piedra_basura2":
			textito=[
					"Esto parece un feretro de piedra, pero apostaría que en realidad es la cama de descanso de los carceleros VIP."
				]
		"piedra_basura3":
			textito=[
					"¡Feretros de piedra, el último grito en mobiliario mágico! Perfectos para cuando deseas que tus posesiones tengan un aire fúnebre pero duradero."
				]
		"piedra_basura8":
			textito=[
					"¿Feretros o camas para vampiros con estilo? Nunca se sabe en la mazmorra. ¡Quizás son multiusos y también sirven como sarcófagos para la siesta!"
				]
		"basurita13":
			textito=[
					"Jarrones, la respuesta mágica a la pregunta '¿Cómo puedo hacer que este lugar se vea más magistral sin esfuerzo alguno?' ¡Solo agrega jarrones y listo!."
				]
		"basurita12":
			textito=[
					"Los jarrones, porque nada dice 'sofisticación' como un objeto que puede pasar de un centro de mesa a un arma arrojadiza en un segundo."
				]
		"basurita3":
			textito=[
					"Los jarrones, porque la verdadera pregunta no es '¿cuántos tienes?' sino '¿cuántos has roto y cuántos intentaste pegar con hechizos de reparación?"
				]
		"basurita5":
			textito=[
					"Este jarrón parece haber tenido una pelea con la gravedad y perdió. ¿Se le puede otorgar algún tipo de premio por la resistencia?"
				]
		"basurita11":
			textito=[
					"Jarrón, te fuiste demasiado pronto. Pero, ¿quién necesita piezas intactas cuando puedes tener un conjunto de jarrón moderno y abstracto?"
				]
		"basurita4":
			textito=[
					"Este jarrón rompió el molde... ¡literalmente! Al menos murió siendo único."
				]
		"basurita6":
			textito=[
					"¿Jarrón antiguo o reliquia mágica? Decidiré después de verificar si hay una etiqueta de precio o no"
				]
		"basurita2":
			textito=[
					"Este jarrón parece resistir el paso del tiempo y las modas. ¿Quizás sea el inmortal del mundo de la cerámica?"
				]
		"basurita":
			textito=[
					"Este jarrón parece contener más secretos que flores. ¿Apostamos a que esconde la fórmula mágica de la felicidad?"
				]
		"alcantarilla2":
			textito=[
					"La alcantarilla, donde los sueños de agua limpia y fresca se encuentran con la realidad de lo que realmente fluye por aquí. ¡Magia de las cloacas, literalmente!"
				]
		"alcantarilla":
			textito=[
					"Esta alcantarilla es como el spa de la prisión, solo que con menos burbujas y más misterio."
				]
		"alcantarilla3":
			textito=[
					"La alcantarilla, donde los desechos encuentran su camino hacia la libertad."
				]
		"alcantarilla4":
			textito=[
					"¡Una alcantarilla en la prisión! Porque si vas a estar encerrado, al menos deberías tener una ruta de escape acuática. ¡Nada como una fuga con estilo!"
				]
		"pozo":
			textito=[
					"El agujero de la basura. No entiendo como pueden tirar la basura a un rio subterranio, deberian aprender a cuidar el medio ambiente."
				]
		"puertas_celdas":
			textito=[
					"No necesito hacerles el favor de volverme a encerrar."
				]
		"tumba1":
			textito=[
				"Estas tumbas parecen tener más agujeros que un queso suizo. ¿Se escaparon los muertos o solo necesitaban un poco de ventilación extra?"
			]
		"tumba2":
			textito=[
				"Estas tumbas deben haber tenido una fiesta subterránea. ¡Parece que la tierra se movió más que en una pista de baile!"
			]
		"tumba3":
			textito=[
				"Estas tumbas están tan rotas que hasta los gusanos deben haber salido en busca de un lugar más acogedor."
			]
		"tumba4":
			textito=[
				"Parece que alguien confundió la carcel con un cementerio, no deberia haber tumbas en este lugar."
			]
		"jarrones_rata":
			textito=[
				"¿Quién pone jarrones en una mazmorra? ¿Decoradores de interiores del inframundo?."
			]
		"palos":
			textito=[
				"Parece que alguien tomó el curso intensivo de 'Cómo Organizar Pilares de Madera en una Mazmorra'."
			]
		"palo2":
			textito=[
				"Este pilar de madera está más firme que mi resolución de no tocar jarrones en mazmorras. Spoiler: no durará mucho."
			]
		"palo3":
			textito=[
				"Este pilar de madera parece el guardián silencioso de la mazmorra."
			]
		"Jarrones_puertaRata":
			textito=[
				"Este jarrón parece estar guardando un secreto. ¿Quizás escondiendo un mapa del tesoro o simplemente acumulando polvo y misterio?."
			]
		"puerta_celdaEmma":
			if(!Global.tiene_pociontoxica):
				textito=[
					"Es verdad que la cerradura esta rota. Definitivamente son los peores guardias del mundo. Si puedo sacar del camino a ese guardia, voy a poder salir de la celda"
				]
			else:
				resume_player()
				Global.tiene_pociontoxica=false
				$guards_animations/guardia1.visible=false
				$guards_animations/guardia1b.visible=true
				$guards_animations/guardia1b.play("stun")
				$Nivel_1/puertaCelda.visible=false
				$Nivel_1/Objetos/puerta_celdaEmma.queue_free()
		"puzzle2":
			if(!Global.tiene_pocionAlucinogena):
				textito=[
					"Necesito deshacerme de ese guardia primero antes de avanzar"
				]
			else:
				Global.tiene_pocionAlucinogena=false
				$guards_animations/AnimationPlayer.play("puzzle2")
				$Nivel_1/Objetos/puzzle2.queue_free()
		"puzzle3":
			if(!Global.tiene_pocionSonora):
				textito=[
					"Necesito deshacerme de ese guardia primero antes de avanzar"
				]
			else:
				Global.tiene_pocionSonora=false
				$guards_animations/AnimationPlayer.play("puzzle3")
				$Nivel_1/Objetos/puzzle3.queue_free()
		"puzzle4":
			if(!Global.tiene_pocionRatificadora):
				textito=[
					"Necesito deshacerme de ese guardia primero antes de avanzar"
				]
			else:
				Global.tiene_pocionRatificadora=false
				resume_player()
				$guards_animations/guardia4.play("rata")
				$Nivel_1/Objetos/puzzle4.queue_free()
		"puzzle5":
			if(!Global.tiene_pocionCongelante):
				textito=[
					"Necesito deshacerme de esos guardia para poder salir del calabozo"
				]
			else:
				Global.tiene_pocionCongelante=false
				$guards_animations/AnimationPlayer.play("puzzle 5")
				$guards_animations/guardia5b.play("freeze")
				$guards_animations/guardia6b.play("freeze")
				$Nivel_1/Objetos/puzzle5.queue_free()
		"escaleras_salida":
			get_tree().change_scene_to_file("res://Scene/Nivel2.tscn")
		"guard1":
			textito=[
					"Deberia sentir lastima pero te lo mereces por ser un pesimo guardia ¿Quien no se da cuenta que la cerradura de una celda esta rota y le da la espalda?"
				]
		"guard5":
			textito=[
					"En verano me lo agradeceras."
				]
		"guard6":
			textito=[
					"Si querias cambiar de trabajo, ahora puedes trabajar como almohada de oso polar."
				]
		"guard2":
			textito=[
					"Espero que puedas encontrar a alguien mejor que Maria, te lo mereces."
				]
		"guard4":
			textito=[
					"Si me lo llevo para usarlo como fuente de ingredientes ¿es tortura y se cuestro?"
				]
	if(textito!=null):
		Global.dialog=textito
		Global.hay_dialogo=true
		
	


func _on_animation_player_animation_finished(anim_name):
	resume_player()

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


func _on_animation_player_animation_started(anim_name):
	pausePlayer()
