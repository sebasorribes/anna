extends Node

@onready var talks=$Talks

var primeraInteraccion_estanteriaNoroeste : bool
var primeraInteraccion_pedernal:bool
var primeraInteraccion_escalera:bool
var primeraInteracion_armarioAbiertoEste:bool
var primeraInteraccion_cajaNoreste:bool
var primeraInteraccion_cajaEste:bool
var primeraInteraccion_cajaBarrilSureste:bool
var primeraInteraccion_cajaBarrrilSur:bool
var primeraInteraccion_comodaSur:bool

var guardia1_alejado:bool

# Called when the node enters the scene tree for the first time.
func _ready():
	$Objetos/sala_guardias/CollisionShape2D.disabled=false
	$Objetos/sala_guardias/sala_guardias/CollisionShape2D2.disabled=false
	$Objetos/final_munieca/CollisionShape2D.disabled=true
	$Objetos/final_munieca/final_munieca/CollisionShape2D2.disabled=true
	$Objetos/puzzle_guardia1/puzzle_guardia1/CollisionShape2D3.disabled=false
	$Objetos/puzzle_guardia1/puzzle_guardia1/CollisionShape2D4.disabled=false
	$Objetos/puzzle_guardia1/puzzle_guardia1b/CollisionShape2D3.disabled=true
	$Objetos/puzzle_guardia1/puzzle_guardia1b/CollisionShape2D4.disabled=true
	$Music.play()
	Global.final_nivel1=false
	Global.final_nivel2=false
	Global.final_nivel3=false
	Global.tiene_laurel1=false
	Global.tiene_carnePodrida=false
	Global.tiene_pedernal=false
	Global.tiene_aguaSucia=false
	Global.tiene_mascaraVerdugo=false
	Global.tiene_menta=false
	Global.tiene_aloeBlanco=false
	Global.tiene_azucarLunar=false
	Global.tiene_muniecaTrapo=false
	Global.tiene_bombaOlor=false
	Global.tiene_mascaraAntiOlor=false
	Global.tiene_muniecamaldita=false
	Global.tiene_medioToxico=false
	var tiene_papel=false
	var tiene_pincel=false
	var tiene_tintero=false
	var tiene_ceniza=false
	var tiene_tinteroConCeniza=false
	var tiene_pincelConTintaCeniza=false
	var tiene_anzuelo=false
	var tiene_pegamentoMagico=false
	var tiene_anzueloConPegamento=false
	var tiene_hilo=false
	var tiene_hiloConAnzueloMagico=false
	var tiene_pincelConAnzuelo=false
	var tiene_disolventeMagico=false
	var tiene_talisman=false
	var final_nivel2=false
	
	primeraInteraccion_estanteriaNoroeste=true
	primeraInteraccion_pedernal =true
	primeraInteraccion_escalera=true
	primeraInteracion_armarioAbiertoEste=true
	primeraInteraccion_cajaNoreste=true
	primeraInteraccion_cajaEste=true
	primeraInteraccion_cajaBarrilSureste=true
	primeraInteraccion_cajaBarrrilSur=true
	primeraInteraccion_comodaSur=true
	$guardias_animation/munieca.visible=false
	guardia1_alejado=false
	
	var texto=[
		"Eso ha resultado más o menos bien, debo estar atenta a mi alrededor si quiero salir de aquí, un simple error será fatal."
	]
	Global.dialog=texto
	Global.hay_dialogo=true
	talks.next_text()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func interaction(objectName):
	var textito
	match objectName:
		"Murray":
			textito=[
				"¿Murray?"
			]
		"Pilar1_noroeste":
			textito=[
				"Es un pilar"
			]
		"puzzle_guardia1":
			if(not Global.tiene_bombaOlor):
				textito=[
					"Tengo que encontrar la manera de alejar a ese guardia para poder pasar."
				]
			else:
				$guardias_animation/nube.visible=true
				$Objetos/puzzle_guardia1/puzzle_guardia1/CollisionShape2D3.disabled=true
				$Objetos/puzzle_guardia1/puzzle_guardia1/CollisionShape2D4.disabled=true
				$Objetos/puzzle_guardia1/puzzle_guardia1b/CollisionShape2D3.disabled=false
				$Objetos/puzzle_guardia1/puzzle_guardia1b/CollisionShape2D4.disabled=false
				$guardias_animation/AnimationPlayer.play("alejarse")
				Global.tiene_bombaOlor=false
		"puzzle_guardia1b":
			if(not Global.tiene_mascaraAntiOlor):
				textito=[
					"Ahora necesito una manera de poder pasar a traves de ese nausiabundo olor."
				]
			else:
				textito=[
					"Ya puedo pasar."
				]
				Global.tiene_mascaraAntiOlor=false
				$guardias_animation/nube.visible=false
				get_node("Objetos/puzzle_guardia1").queue_free()
		"puzzle_guardia2":
			if(not Global.tiene_muniecamaldita):
				textito=[
					"Ese guardia luce raro, como si estuviera en abstinencia. Necesito alejarlo para poder escapar, ya estoy cerca."
				]
			else:
				$guardias_animation/munieca.visible=true
				$guardias_animation/AnimationPlayer.play("munieca")
				$Objetos/final_munieca/CollisionShape2D.disabled=false
				$Objetos/final_munieca/final_munieca/CollisionShape2D2.disabled=false
				$Objetos/sala_guardias/CollisionShape2D.disabled=true
				$Objetos/sala_guardias/sala_guardias/CollisionShape2D2.disabled=true
				Global.tiene_muniecamaldita=false
				get_node("Objetos/puzzle_guardia2").queue_free()
		"Puerta_entrada":
			textito=[
				"Fue un milagro que pudiera salir de ahí, no pienso volver."
			]
		"Arbolada":
			if(Global.tiene_talisman):
				textito=[
					"No quiero entrar ahi, pero no tengo otra forma de escapar. Espero que mi talismán funcione"
				]
				Global.final_nivel2=true
			else:
				textito=[
					"El bosque del tiempo, uno de los lugares más peligrosos del reino. No voy a entrar ahi sin protección"
				]
		"sala_guardias":
			textito=[
				"Esta lleno de guardias, ¿por qué entraria a ese lugar?"
			]
		"final_munieca":
			textito=[
				"Creo que es mejor si no vuelvo por ahi."
			]
		"Monto_cajas":
			textito=[
				"Una representación visual de la batalla interminable entre el orden y el caos, o tal vez solo el resultado de un entrenamiento de guardias con pésima puntería."
			]
		"estanteria_norte":
			textito=[
				"La estantería, donde los objetos se alinean como soldados en formación."
			]
		"Estanteria_lateral_centro":
			textito=[
				"Este estante es como un collage de momentos encantados. ¿Cada objeto tendrá una historia única, o todos contribuyen a un cuento colectivo?"
			]
		"Estanteria_lateral_suroeste4":
			textito=[
				"Esta estantería es como un desfile de objetos que intentan mantenerse en formación, pero algunos claramente están de permiso."
			]
		"Estanteria_lateral_noroeste":
			textito=[
				"Los objetos están tan apiñados que deben tener su propio código de conducta para no chocarse entre ellos."
			]
		"Estanteria_lateral_suroeste3":
			textito=[
				"Este estante es un auténtico circo en miniatura. ¿Quién necesita payasos cuando tienes una colección de objetos que parece estar practicando acrobacias constantemente?"
			]
		"Estanteria_lateral_suroeste":
			textito=[
				"La estantería del caos organizado. Cada objeto parece tener una estrategia secreta para escapar de su lugar designado."
			]
		"Estanteria_lateral_suroeste2":
			textito=[
				"Este estante es como un juego de escondite para objetos. Algunos claramente necesitan practicar más sus habilidades de camuflaje."
			]
		"estanteria_sureste1":
			textito=[
				"Este estante es como un club nocturno para objetos, y algunos claramente han tenido demasiada diversión esta noche."
			]
		"Armario_abierto_oeste":
			textito=[
				"Este armario tiene una política de 'puertas abiertas' muy relajada. Al menos las camisas y pantalones pueden disfrutar de una brisa fresca mientras esperan ser elegidos."
			]
		"Comoda_oeste":
			textito=[
				"Abrir esta cómoda es como abrir una caja de juguetes mágica, solo que en lugar de muñecas y autos, descubres cosas como clavos sueltos y tarjetas postales antiguas."
			]
		"Cama_norte2":
			textito=[
				"Las camas son como un abrazo mágico al final del día. ¿Quién necesita hechizos cuando tienes sábanas suaves y almohadas que parecen flotar en las nubes?"
			]
		"Cama_norte3":
			textito=[
				"Las camas son donde los sueños se mezclan con los ronquidos en una sinfonía nocturna. ¡A veces, los ronquidos son la banda sonora perfecta para la película de tus sueños!"
			]
		"Cama_norte4":
			textito=[
				"Las camas son lugar mágico donde puedes tener una reunión con tu almohada y discutir los eventos del día. ¡A veces, la almohada tiene los mejores consejos!"
			]
		"Cama_este":
			textito=[
				"Esta cama es como un campo de batalla cósmico para las mantas y las sábanas. ¿Por qué parece que siempre se enredan como si estuvieran conspirando en tu contra?"
			]
		"Cama_oeste":
			textito=[
				"Esta cama es como un campamento base para expediciones a los sueños."
			]
		"Cama_oeste2":
			textito=[
				"Las sábanas son como el escenario de un espectáculo de magia. ¿Dónde van los calcetines sueltos?"
			]
		"Espadas":
			textito=[
				"Este armero es como la tienda de juguetes de un caballero adulto. ¿Qué es mejor que una espada reluciente? ¡Dos espadas relucientes, por supuesto!"
			]
		"Lanzas":
			textito=[
				"El armero de lanzas, donde el lema es 'Clava primero, pregunta después'."
			]
		"Mesa_desacomodada":
			textito=[
				"Esta mesa está tan vacía que incluso el eco se siente solo."
			]
		"Mesa_platos":
			textito=[
				"Esta mesa está más emocionante que un juego de Jenga, solo que con platos en lugar de bloques."
			]
	
	if(textito !=null):
		Global.dialog=textito
		Global.hay_dialogo=true
	

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

func _on_animation_player_animation_finished(anim_name):
	get_node("Player").set_physics_process(true)
	get_node("Player").get_child(2).set_process(true)
	get_node("Player").get_child(3).set_process(true)
	get_node("Player").get_child(4).set_process(true)
	get_node("Player").get_child(5).set_process(true)


func _on_animation_player_animation_started(anim_name):
	pausePlayer()
