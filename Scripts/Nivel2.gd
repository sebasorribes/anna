extends Node

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
	
	primeraInteraccion_estanteriaNoroeste=true
	primeraInteraccion_pedernal =true
	primeraInteraccion_escalera=true
	primeraInteracion_armarioAbiertoEste=true
	primeraInteraccion_cajaNoreste=true
	primeraInteraccion_cajaEste=true
	primeraInteraccion_cajaBarrilSureste=true
	primeraInteraccion_cajaBarrrilSur=true
	primeraInteraccion_comodaSur=true
	
	guardia1_alejado=false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Global.tiene_aguaSucia and Global.tiene_carnePodrida and Global.tiene_pedernal):
		Global.tiene_bombaOlor=true
	
	if(Global.tiene_aloeBlanco and Global.tiene_mascaraVerdugo and Global.tiene_menta):
		Global.tiene_mascaraAntiOlor=true
	
	if(Global.tiene_azucarLunar and Global.tiene_muniecaTrapo):
		Global.tiene_muniecamaldita=true

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
		"estanteria_noreste":
			if (primeraInteraccion_estanteriaNoroeste):
				textito=[
					"Hojas de laurel. Siempre son utiles"
					]
				Global.tiene_laurel1=true
				primeraInteraccion_estanteriaNoroeste=false
			else:
				textito=[
					"No hay nada más."
				]
		"Pedernal":
			if (primeraInteraccion_pedernal):
				textito=[
					"¿Huesos? Espera, hay un pedernal ahi, puede ser util."
				]
				Global.tiene_pedernal=true
				primeraInteraccion_pedernal=false
			else:
				textito=[
					"Lo siento, queridos huesos. No era mi intención despojarlos de su preciado pedernal. Pero ahora, este pedernal tiene una cita con mi necesidad urgente de escapar. ¡Gracias por su comprensión postmortem!"
			]
		"Escalera":
			if (primeraInteraccion_escalera):
				textito=[
					"¿Porque hay un vaso con agua sucia junto a la escalera?. \nNo importa, me sirve para utilizarlo como medio para una poción"
				]
				Global.tiene_aguaSucia=true
				primeraInteraccion_escalera=false
			else:
				textito=[
					"Dicen que puedes ir y entrar a donde quieras cargando una escalera pero no creo que este sea el momento de probar esa teoria."
				]
		"Armario_abierto_este":
			if (primeraInteracion_armarioAbiertoEste):
				textito=[
					"¿Sera la máscara de mi verdugo? Mejor me la llevo, puede ser util."
				]
				Global.tiene_mascaraVerdugo=true
				primeraInteracion_armarioAbiertoEste=false
			else:
				textito=[
					"Solamente veo un par de calzoncillos viejos, no hay nada util."
				]
		"Caja_noreste":
			if (primeraInteraccion_cajaNoreste):
				textito=[
					"¡Ugh! ¡Por las barbas de Merlín!. \nEs carne podrida. Supongo que podria serme util, solo espero que no se impregne el olor en mi tunica."
				]
				Global.tiene_carnePodrida=true
				primeraInteraccion_cajaNoreste=false
			else:
				textito=[
					"No quiero volver a oler algo tan nauseabundo."
				]
		"Caja_este":
			if (primeraInteraccion_cajaEste):
				textito=[
					"¡Menta! Es ideal para evitar sentir olores desagradables."
				]
				Global.tiene_menta=true
				primeraInteraccion_cajaEste=false
			else:
				textito=[
					"Es un placer oler esta caja, todo lo contrario a la de carne podrida."
				]
		"CajaBarril_sureste":
			if (primeraInteraccion_cajaBarrilSureste):
				textito=[
					"¿Quien iba a pensar que encontraria aloe blanco en este lugar?."
				]
				Global.tiene_aloeBlanco=true
				primeraInteraccion_cajaBarrilSureste=false
			else:
				textito=[
					"No hay nada util."
				]
		"CajaBarril_sur":
			if (primeraInteraccion_cajaBarrrilSur):
				textito=[
					"¿Por qué hay azucar lunar en este lugar? Voy a llevar un poco, podria usarla para algo."
				]
				Global.tiene_azucarLunar=true
				primeraInteraccion_cajaBarrrilSur=false
			else:
				textito=[
					"¿Quien iba a pensar que los guardias usan este tipo de drogas?."
				]
		"Comoda_sur":
			if (primeraInteraccion_comodaSur):
				textito=[
					"Una muñeca de trapo, seguro puedo usarla para hechizar."
				]
				Global.tiene_muniecaTrapo=true
				primeraInteraccion_comodaSur=false
			else:
				textito=[
					"¿Por qué guardan eso en este lugar?."
				]
		"puzzle_guardia1":
			if(not Global.tiene_bombaOlor):
				textito=[
					"Tengo que encontrar la manera de alejar a ese guardia para poder pasar."
				]
			else:
				if(not guardia1_alejado):
					$guardias_animation/animacion1_Guardia/AnimationPlayer.play("alejarse")
					guardia1_alejado=true
				
			if(guardia1_alejado and not Global.tiene_mascaraAntiOlor):
				textito=[
					"Ahora necesito una manera de poder pasar a traves de ese nausiabundo olor."
				]
			elif(guardia1_alejado and Global.tiene_mascaraAntiOlor):
				textito=[
					"Ya puedo pasar."
				]
				get_node("Objetos/puzzle_guardia1").queue_free()
	
	
	Global.dialog=textito
	Global.hay_dialogo=true

