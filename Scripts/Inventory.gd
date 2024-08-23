extends Control

var esta_adentro
var is_selected : bool
var object_selected
var arrayImagenes : Array
var arrayPuzzles : Array

#Rutas tutorial
var imagen_frasco=[load("res://sprites/items/frascovacio.png"),"Frasco"]
var imagen_colaRata=[load("res://sprites/items/colarata.png"),"Cola de rata"]
var imagen_florMontania=[load("res://sprites/items/petalo.png"),"Petalo de flor de montaña"]
var imagen_pocionBuscadora=[load("res://sprites/items/pocion6.png"),"Poción \"Encuentralo todo\" "]
var imagen_llaveTutorial=[load("res://sprites/items/llave.png"),"Llave"]

#Rutas nivel 1
var imagen_musgoNegro=[load("res://sprites/items/musgonegro.png"),"Musgo negro"]
var imagen_polvoHueso=[load("res://sprites/items/polvohueso.png"),"Polvo de hueso"]
var imagen_aserrin=[load("res://sprites/items/acerrin.png"),"Aserrín"]
var imagen_pocionToxica=[load("res://sprites/items/pocion4.png"),"Poción toxica"]
var imagen_hongoAlucinogeno=[load("res://sprites/items/hongo.png"),"Hongo alucinogeno"]
var imagen_cera=[load("res://sprites/items/cera.png"),"Cera"]
var imagen_hiervaMontania=[load("res://sprites/items/flor.png"),"Hierva de montaña"]
var imagen_pocionAlucinogena=[load("res://sprites/items/pocion1.png"),"Poción alucinogena"]
var imagen_aceite=[load("res://sprites/items/aceite.png"),"Aceite"]
var imagen_licor=[load("res://sprites/items/licor.png"),"Licor"]
var imagen_polvoNegro=[load("res://sprites/items/polvonegronegativo.png"),"Polvo negro"]
var imagen_pocionSonota=[load("res://sprites/items/pocion2.png"),"Poción exploshhhhhión"]
var imagen_aguaContaminada=[load("res://sprites/items/aguapodrida.png"),"Agua contaminada"]
var imagen_peloRata=[load("res://sprites/items/pelorata.png"),"Pelo de rata"]
var imagen_lenguaRana=[load("res://sprites/items/lenguarana.png"),"Lengua de rana"]
var imagen_pocionRatificadora=[load("res://sprites/items/pocion3.png"),"Poción ratificadora"]
var imagen_piedraFusion=[load("res://sprites/items/piedrafusion.png"),"Piedra fusión"]
var imagen_miel=[load("res://sprites/items/miel.png"),"Miel"]
var imagen_cardo=[load("res://sprites/items/cardo.png"),"cardo"]
var imagen_pocionCongelante=[load("res://sprites/items/pocion5.png"),"Poción congelante"]

#Rutas nivel 2
var imagen_aguaSucia=[load("res://sprites/items/aguapodrida.png"),"Agua Sucia"]
var imagen_pedernal=[load("res://sprites/items/pedernal.png"),"Pedernal"]
var imagen_carnePodrida=[load("res://sprites/items/carnepodrida.png"),"Carne podrida"]
var imagen_bombaOlor=[load("res://sprites/items/bombaolora.png"),"Bomba de olor"]
var imagen_mascaraVerdugo=[load("res://sprites/items/mascaraverdugo.png"),"Mascara de verdugo"]
var imagen_menta=[load("res://sprites/items/menta.png"),"Menta"]
var imagen_aloeBlanco=[load("res://sprites/items/aloeblanco.png"),"Aloe blanco"]
var imagen_laurel1=[load("res://sprites/items/laurel.png"),"laurel"]
var imagen_mascaraAntiOlor=[load("res://sprites/items/masacaraantiolor.png"),"Mascara antiolor"]
var imagen_muniecaTrapo=[load("res://sprites/items/muniecamaldita.png"),"Muñeca de trapo"]
var imagen_azucarLunar=[load("res://sprites/items/azucarlunar.png"),"Azucar lunar"]
var imagen_muniecaMaldita=[load("res://sprites/items/muniecamaldita2.png"),"muñeca maldita"]

var imagen_papel=[load("res://sprites/items/papel.png"),"papel"]
var imagen_pincel=[load("res://sprites/items/pincel.png"),"Pincel"]
var imagen_ceniza=[load("res://sprites/items/cenizas.png"),"Ceniza"]
var imagen_tintero=[load("res://sprites/items/tintero.png"),"Tintero"]
var imagen_tinteroCeniza=[load("res://sprites/items/tinteroconcenizas.png"),"Tintero con ceniza"]
var imagen_pincelTintaCeniza=[load("res://sprites/items/pincelconceniza.png"),"Pincel con tinta de ceniza"]
var imagen_anzuelo=[load("res://sprites/items/anzuelo.png"),"Anzuelo"]
var imagen_pegamento=[load("res://sprites/items/pegamentomagico.png"),"Pegamento mágico"]
var imagen_anzueloMagico=[load("res://sprites/items/anzueloconpegamento.png"),"Anzuelo con pegamento mágico"]
var imagen_hilo=[load("res://sprites/items/hilo.png"),"Hilo"]
var imagen_hiloAnzueloMagico=[load("res://sprites/items/hiloconanzuelo.png"),"Hilo con anzuelo"]
var imagen_pincelAnzuelo=[load("res://sprites/items/pincelconanzuelo.png"),"Pincel con anzuelo"]
var imagen_disolvente=[load("res://sprites/items/removedorpegamento.png"),"Disolvente mágico"]
var imagen_talisman=[load("res://sprites/items/talisman.png"),"Talisman protector"]

func _ready():
	is_selected=false
	charge_images()
	charge_arrayPuzzles()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	change_inventory()

func charge_arrayPuzzles():
	if(get_parent().name=="Tutorial"):
		arrayPuzzles = [Global.tiene_FrascoTutorial,Global.tiene_FlorAzulMotania,Global.tiene_colaRataTutoria,Global.tiene_pocion,Global.tiene_llave]
	elif(get_parent().name=="Node"):
		arrayPuzzles= [
			Global.tiene_musgoAguaNegra,Global.tiene_polvoHueso,Global.tiene_aserrin,Global.tiene_pociontoxica,Global.tiene_hongoAlucinogeno,Global.tiene_cera,
			Global.tiene_hiervaMontania,Global.tiene_pocionAlucinogena,Global.tiene_aceite,Global.tiene_licor,Global.tiene_polvoNegro,Global.tiene_pocionSonora,
			Global.tiene_aguaContaminada,Global.tiene_peloRata,Global.tiene_lenguaRana,Global.tiene_pocionRatificadora,Global.tiene_piedraFusion,Global.tiene_miel3,
			Global.tiene_cardo3,Global.tiene_pocionCongelante
		]
	elif(get_parent().name=="Nivel2"):
		arrayPuzzles= [
			Global.tiene_aguaSucia,Global.tiene_pedernal, Global.tiene_carnePodrida, Global.tiene_bombaOlor, Global.tiene_mascaraVerdugo, 
			Global.tiene_menta,Global.tiene_aloeBlanco, Global.tiene_laurel1, Global.tiene_mascaraAntiOlor, 
			Global.tiene_muniecaTrapo, Global.tiene_azucarLunar, Global.tiene_muniecamaldita,Global.tiene_papel,Global.tiene_pincel,Global.tiene_ceniza,
			Global.tiene_tintero,Global.tiene_tinteroConCeniza,Global.tiene_pincelConTintaCeniza,Global.tiene_anzuelo,Global.tiene_pegamentoMagico,
			Global.tiene_anzueloConPegamento,Global.tiene_hilo,Global.tiene_hiloConAnzueloMagico,Global.tiene_pincelConAnzuelo,Global.tiene_disolventeMagico,
			Global.tiene_talisman
		]

func charge_images():
	if(get_parent().name=="Tutorial"):
		arrayImagenes = [imagen_frasco,imagen_florMontania,imagen_colaRata,imagen_pocionBuscadora,imagen_llaveTutorial]
	elif(get_parent().name=="Node"):
		arrayImagenes= [
			imagen_musgoNegro,imagen_polvoHueso,imagen_aserrin,imagen_pocionToxica,imagen_hongoAlucinogeno,imagen_cera,
			imagen_hiervaMontania,imagen_pocionAlucinogena,imagen_aceite,imagen_licor,imagen_polvoNegro,imagen_pocionSonota,
			imagen_aguaContaminada,imagen_peloRata,imagen_lenguaRana,imagen_pocionRatificadora,imagen_piedraFusion,
			imagen_miel,imagen_cardo,imagen_pocionCongelante
		]
	elif(get_parent().name=="Nivel2"):
		arrayImagenes=[
			imagen_aguaSucia,imagen_pedernal,imagen_carnePodrida,imagen_bombaOlor,imagen_mascaraVerdugo,imagen_menta,
			imagen_aloeBlanco,imagen_laurel1,imagen_mascaraAntiOlor,imagen_muniecaTrapo,imagen_azucarLunar,imagen_muniecaMaldita,
			imagen_papel,imagen_pincel,imagen_ceniza,imagen_tintero,imagen_tinteroCeniza,imagen_pincelTintaCeniza,imagen_anzuelo,imagen_pegamento,
			imagen_anzueloMagico,imagen_hilo,imagen_hiloAnzueloMagico,imagen_pincelAnzuelo,imagen_disolvente,imagen_talisman
		]

func change_inventory():
	charge_arrayPuzzles()
	inventoryImages()
	

func inventoryImages():
	inventoryClean()
	for i in range(arrayPuzzles.size()):
		if(arrayPuzzles[i]==true):
			for j in range(12):
				if(self.get_child(j).get_child(0).get_child(0).texture==arrayImagenes[i][0]):
					break;
				elif(self.get_child(j).get_child(0).get_child(0).get_texture()==null):
					self.get_child(j).get_child(0).get_child(0).texture=arrayImagenes[i][0]
					self.get_child(j).get_child(2).text=arrayImagenes[i][1]
					break

func inventoryClean():
	for j in range(12):
			self.get_child(j).get_child(0).get_child(0).texture=null
			self.get_child(j).get_child(2).text=""
	

func seleccion(imagen):
	if(is_selected):
		fusion(object_selected,imagen)
		pass
	else:
		object_selected=imagen
	
	is_selected=!is_selected

func fusion(object_selected,fusionable):
	if(get_parent().name=="Tutorial"):
		fusionTutorial(object_selected,fusionable)
	elif(get_parent().name=="Node"):
		fusionNivel1(object_selected,fusionable)
	elif(get_parent().name=="Nivel2"):
		fusionMivel2(object_selected,fusionable)

func fusionTutorial(selected,fusionable):
	if(selected==imagen_frasco[0]):
		if(fusionable==imagen_colaRata[0]):
			if(!Global.tiene_mediaPocion):
				Global.tiene_mediaPocion=true
			else:
				Global.tiene_mediaPocion=false
				Global.tiene_FrascoTutorial=false
				Global.tiene_pocion=true
			Global.tiene_colaRataTutoria=false
			$FX.play()
		elif(fusionable==imagen_florMontania[0]):
			if(!Global.tiene_mediaPocion):
				Global.tiene_mediaPocion=true
			else:
				Global.tiene_mediaPocion=false
				Global.tiene_FrascoTutorial=false
				Global.tiene_pocion=true
			Global.tiene_FlorAzulMotania=false
			$FX.play()
	elif(selected==imagen_colaRata[0]):
		if(fusionable==imagen_frasco[0]):
			if(!Global.tiene_mediaPocion):
				Global.tiene_mediaPocion=true
			else:
				Global.tiene_mediaPocion=false
				Global.tiene_colaRataTutoria=false
				Global.tiene_pocion=true
			Global.tiene_FrascoTutorial=false
			$FX.play()
		elif(fusionable==imagen_florMontania[0]):
			if(!Global.tiene_mediaPocion):
				Global.tiene_mediaPocion=true
			else:
				Global.tiene_mediaPocion=false
				Global.tiene_colaRataTutoria=false
				Global.tiene_pocion=true
			Global.tiene_FlorAzulMotania=false
			$FX.play()
	elif(selected==imagen_florMontania[0]):
		if(fusionable==imagen_frasco[0]):
			if(!Global.tiene_mediaPocion):
				Global.tiene_mediaPocion=true
			else:
				Global.tiene_mediaPocion=false
				Global.tiene_FlorAzulMotania=false
				Global.tiene_pocion=true
			Global.tiene_FrascoTutorial=false
			$FX.play()
		elif(fusionable==imagen_colaRata[0]):
			if(!Global.tiene_mediaPocion):
				Global.tiene_mediaPocion=true
			else:
				Global.tiene_mediaPocion=false
				Global.tiene_FlorAzulMotania=false
				Global.tiene_pocion=true
			Global.tiene_colaRataTutoria=false
			$FX.play()
	

func fusionNivel1(selected,fusionable):
	var musgo_negro=imagen_musgoNegro[0]
	var polvo_hueso=imagen_polvoHueso[0]
	var aserrin=imagen_aserrin[0]
	var hongo_alucinogeno=imagen_hongoAlucinogeno[0]
	var cera=imagen_cera[0]
	var hierva_montania=imagen_hiervaMontania[0]
	var aceite=imagen_aceite[0]
	var licor=imagen_licor[0]
	var polvo_negro=imagen_polvoNegro[0]
	var agua_contaminada=imagen_aguaContaminada[0]
	var pelo_rata=imagen_peloRata[0]
	var lengua_rama=imagen_lenguaRana[0]
	var piedra_fusion=imagen_piedraFusion[0]
	var miel =imagen_miel[0]
	var cardo=imagen_cardo[0]
	
	match (selected):
		musgo_negro:
			if(fusionable==imagen_polvoHueso[0]):
				if(!Global.tiene_medioToxico):
					Global.tiene_medioToxico=true
				else:
					Global.tiene_medioToxico=false
					Global.tiene_musgoAguaNegra=false
					Global.tiene_pociontoxica=true
				Global.tiene_polvoHueso=false
				$FX.play()
			elif(fusionable==imagen_aserrin[0]):
				if(!Global.tiene_medioToxico):
					Global.tiene_medioToxico=true
				else:
					Global.tiene_medioToxico=false
					Global.tiene_musgoAguaNegra=false
					Global.tiene_pociontoxica=true
				Global.tiene_aserrin=false
				$FX.play()
		polvo_hueso:
			if(fusionable==musgo_negro):
				if(!Global.tiene_medioToxico):
					Global.tiene_medioToxico=true
				else:
					Global.tiene_medioToxico=false
					Global.tiene_polvoHueso=false
					Global.tiene_pociontoxica=true
				Global.tiene_musgoAguaNegra=false
				$FX.play()
			elif(fusionable==imagen_aserrin[0]):
				if(!Global.tiene_medioToxico):
					Global.tiene_medioToxico=true
				else:
					Global.tiene_medioToxico=false
					Global.tiene_polvoHueso=false
					Global.tiene_pociontoxica=true
				Global.tiene_aserrin=false
				$FX.play()
		aserrin:
			if(fusionable==musgo_negro):
				if(!Global.tiene_medioToxico):
					Global.tiene_medioToxico=true
				else:
					Global.tiene_medioToxico=false
					Global.tiene_aserrin=false
					Global.tiene_pociontoxica=true
				Global.tiene_musgoAguaNegra=false
				$FX.play()
			elif(fusionable==polvo_hueso):
				if(!Global.tiene_medioToxico):
					Global.tiene_medioToxico=true
				else:
					Global.tiene_medioToxico=false
					Global.tiene_aserrin=false
					Global.tiene_pociontoxica=true
				Global.tiene_polvoHueso=false
				$FX.play()
		hongo_alucinogeno:
			if(fusionable==imagen_cera[0]):
				if(!Global.tiene_mediaAlucinacion):
					Global.tiene_mediaAlucinacion=true
				else:
					Global.tiene_mediaAlucinacion=false
					Global.tiene_hongoAlucinogeno=false
					Global.tiene_pocionAlucinogena=true
				Global.tiene_cera=false
				$FX.play()
			elif(fusionable==imagen_hiervaMontania[0]):
				if(!Global.tiene_mediaAlucinacion):
					Global.tiene_mediaAlucinacion=true
				else:
					Global.tiene_mediaAlucinacion=false
					Global.tiene_hongoAlucinogeno=false
					Global.tiene_pocionAlucinogena=true
				Global.tiene_hiervaMontania=false
				$FX.play()
		cera:
			if(fusionable==hongo_alucinogeno):
				if(!Global.tiene_mediaAlucinacion):
					Global.tiene_mediaAlucinacion=true
				else:
					Global.tiene_mediaAlucinacion=false
					Global.tiene_cera=false
					Global.tiene_pocionAlucinogena=true
				Global.tiene_hongoAlucinogeno=false
				$FX.play()
			elif(fusionable==imagen_hiervaMontania[0]):
				if(!Global.tiene_mediaAlucinacion):
					Global.tiene_mediaAlucinacion=true
				else:
					Global.tiene_mediaAlucinacion=false
					Global.tiene_cera=false
					Global.tiene_pocionAlucinogena=true
				Global.tiene_hiervaMontania=false
				$FX.play()
		hierva_montania:
			if(fusionable==imagen_cera[0]):
				if(!Global.tiene_mediaAlucinacion):
					Global.tiene_mediaAlucinacion=true
				else:
					Global.tiene_mediaAlucinacion=false
					Global.tiene_hiervaMontania=false
					Global.tiene_pocionAlucinogena=true
				Global.tiene_cera=false
				Global.tiene_cera=false
				$FX.play()
			elif(fusionable==hongo_alucinogeno):
				if(!Global.tiene_mediaAlucinacion):
					Global.tiene_mediaAlucinacion=true
				else:
					Global.tiene_mediaAlucinacion=false
					Global.tiene_hiervaMontania=false
					Global.tiene_pocionAlucinogena=true
				Global.tiene_hongoAlucinogeno=false
				$FX.play()
		aceite:
			if(fusionable==imagen_licor[0]):
				if(!Global.tiene_mediaSonora):
					Global.tiene_mediaSonora=true
				else:
					Global.tiene_mediaSonora=false
					Global.tiene_aceite=false
					Global.tiene_pocionSonora=true
				Global.tiene_licor=false
				$FX.play()
			elif(fusionable==imagen_polvoNegro[0]):
				if(!Global.tiene_mediaSonora):
					Global.tiene_mediaSonora=true
				else:
					Global.tiene_mediaSonora=false
					Global.tiene_aceite=false
					Global.tiene_pocionSonora=true
				Global.tiene_polvoNegro=false
				$FX.play()
		licor:
			if(fusionable==aceite):
				if(!Global.tiene_mediaSonora):
					Global.tiene_mediaSonora=true
				else:
					Global.tiene_mediaSonora=false
					Global.tiene_licor=false
					Global.tiene_pocionSonora=true
				Global.tiene_aceite=false
				$FX.play()
			elif(fusionable==imagen_polvoNegro[0]):
				if(!Global.tiene_mediaSonora):
					Global.tiene_mediaSonora=true
				else:
					Global.tiene_mediaSonora=false
					Global.tiene_licor=false
					Global.tiene_pocionSonora=true
				Global.tiene_polvoNegro=false
				$FX.play()
		polvo_negro:
			if(fusionable==aceite):
				if(!Global.tiene_mediaSonora):
					Global.tiene_mediaSonora=true
				else:
					Global.tiene_mediaSonora=false
					Global.tiene_polvoNegro=false
					Global.tiene_pocionSonora=true
				Global.tiene_aceite=false
				$FX.play()
			elif(fusionable==licor):
				if(!Global.tiene_mediaSonora):
					Global.tiene_mediaSonora=true
				else:
					Global.tiene_mediaSonora=false
					Global.tiene_polvoNegro=false
					Global.tiene_pocionSonora=true
				Global.tiene_licor=false
				$FX.play()
		agua_contaminada:
			if(fusionable==imagen_peloRata[0]):
				if(!Global.tiene_mediaRatificadora):
					Global.tiene_mediaRatificadora=true
				else:
					Global.tiene_mediaRatificadora=false
					Global.tiene_aguaContaminada=false
					Global.tiene_pocionRatificadora=true
				Global.tiene_peloRata=false
				$FX.play()
			elif(fusionable==imagen_lenguaRana[0]):
				if(!Global.tiene_mediaRatificadora):
					Global.tiene_mediaRatificadora=true
				else:
					Global.tiene_mediaRatificadora=false
					Global.tiene_aguaContaminada=false
					Global.tiene_pocionRatificadora=true
				Global.tiene_lenguaRana=false
				$FX.play()
		pelo_rata:
			if(fusionable==agua_contaminada):
				if(!Global.tiene_mediaRatificadora):
					Global.tiene_mediaRatificadora=true
				else:
					Global.tiene_mediaRatificadora=false
					Global.tiene_peloRata=false
					Global.tiene_pocionRatificadora=true
				Global.tiene_aguaContaminada=false
				$FX.play()
			elif(fusionable==imagen_lenguaRana[0]):
				if(!Global.tiene_mediaRatificadora):
					Global.tiene_mediaRatificadora=true
				else:
					Global.tiene_mediaRatificadora=false
					Global.tiene_peloRata=false
					Global.tiene_pocionRatificadora=true
				Global.tiene_lenguaRana=false
				$FX.play()
		lengua_rama:
			if(fusionable==imagen_peloRata[0]):
				if(!Global.tiene_mediaRatificadora):
					Global.tiene_mediaRatificadora=true
				else:
					Global.tiene_mediaRatificadora=false
					Global.tiene_lenguaRana=false
					Global.tiene_pocionRatificadora=true
				Global.tiene_peloRata=false
				$FX.play()
			elif(fusionable==agua_contaminada):
				if(!Global.tiene_mediaRatificadora):
					Global.tiene_mediaRatificadora=true
				else:
					Global.tiene_mediaRatificadora=false
					Global.tiene_lenguaRana=false
					Global.tiene_pocionRatificadora=true
				Global.tiene_aguaContaminada=false
				$FX.play()
		piedra_fusion:
			if(fusionable==imagen_miel[0]):
				if(!Global.tiene_mediaCongelante):
					Global.tiene_mediaCongelante=true
				else:
					Global.tiene_mediaCongelante=false
					Global.tiene_piedraFusion=false
					Global.tiene_pocionCongelante=true
				Global.tiene_miel3=false
				$FX.play()
			elif(fusionable==imagen_cardo[0]):
				if(!Global.tiene_mediaCongelante):
					Global.tiene_mediaCongelante=true
				else:
					Global.tiene_mediaCongelante=false
					Global.tiene_piedraFusion=false
					Global.tiene_pocionCongelante=true
				Global.tiene_cardo3=false
				$FX.play()
		miel:
			if(fusionable==piedra_fusion):
				if(!Global.tiene_mediaCongelante):
					Global.tiene_mediaCongelante=true
				else:
					Global.tiene_mediaCongelante=false
					Global.tiene_miel3=false
					Global.tiene_pocionCongelante=true
				Global.tiene_piedraFusion=false
				$FX.play()
			elif(fusionable==imagen_cardo[0]):
				if(!Global.tiene_mediaCongelante):
					Global.tiene_mediaCongelante=true
				else:
					Global.tiene_mediaCongelante=false
					Global.tiene_miel3=false
					Global.tiene_pocionCongelante=true
				Global.tiene_cardo3=false
				$FX.play()
		cardo:
			if(fusionable==imagen_miel[0]):
				if(!Global.tiene_mediaCongelante):
					Global.tiene_mediaCongelante=true
				else:
					Global.tiene_mediaCongelante=false
					Global.tiene_cardo3=false
					Global.tiene_pocionCongelante=true
				Global.tiene_miel3=false
				$FX.play()
			elif(fusionable==piedra_fusion):
				if(!Global.tiene_mediaCongelante):
					Global.tiene_mediaCongelante=true
				else:
					Global.tiene_mediaCongelante=false
					Global.tiene_cardo3=false
					Global.tiene_pocionCongelante=true
				Global.tiene_piedraFusion=false
				$FX.play()

func fusionMivel2(selected,fusionable):
	var agua_sucia=imagen_aguaSucia[0]
	var pedernal=imagen_pedernal[0]
	var carne_podrida=imagen_carnePodrida[0]
	var mascara_verdugo=imagen_mascaraVerdugo[0]
	var menta=imagen_menta[0]
	var aloe=imagen_aloeBlanco[0]
	var laurel=imagen_laurel1[0]
	var munieca_trapo=imagen_muniecaTrapo[0]
	var azucar_lunar=imagen_azucarLunar[0]
	var anzuelo=imagen_anzuelo[0]
	var pegamento=imagen_pegamento[0]
	var tinta=imagen_tintero[0]
	var ceniza=imagen_ceniza[0]
	var hilo=imagen_hilo[0]
	var anzuelo_magico=imagen_anzueloMagico[0]
	var pincel=imagen_pincel[0]
	var tintero_ceniza=imagen_tinteroCeniza[0]
	var papel=imagen_papel[0]
	var pincel_tintaCeniza=imagen_pincelTintaCeniza[0]
	var Disolvente=imagen_disolvente[0]
	var pincel_anzuelo=imagen_pincelAnzuelo[0]
	
	
	match (selected):
		agua_sucia:
			if(fusionable==imagen_pedernal[0]):
				if(!Global.tiene_mediaBomba):
					Global.tiene_mediaBomba=true
				else:
					Global.tiene_mediaBomba=false
					Global.tiene_aguaSucia=false
					Global.tiene_bombaOlor=true
				Global.tiene_pedernal=false
				$FX.play()
			elif(fusionable==imagen_carnePodrida[0]):
				if(!Global.tiene_mediaBomba):
					Global.tiene_mediaBomba=true
				else:
					Global.tiene_mediaBomba=false
					Global.tiene_aguaSucia=false
					Global.tiene_bombaOlor=true
				Global.tiene_carnePodrida=false
				$FX.play()
		pedernal:
			if(fusionable==agua_sucia):
				if(!Global.tiene_mediaBomba):
					Global.tiene_mediaBomba=true
				else:
					Global.tiene_mediaBomba=false
					Global.tiene_pedernal=false
					Global.tiene_bombaOlor=true
				Global.tiene_aguaSucia=false
				$FX.play()
			elif(fusionable==imagen_carnePodrida[0]):
				if(!Global.tiene_mediaBomba):
					Global.tiene_mediaBomba=true
				else:
					Global.tiene_mediaBomba=false
					Global.tiene_pedernal=false
					Global.tiene_bombaOlor=true
				Global.tiene_carnePodrida=false
				$FX.play()
		carne_podrida:
			if(fusionable==imagen_pedernal[0]):
				if(!Global.tiene_mediaBomba):
					Global.tiene_mediaBomba=true
				else:
					Global.tiene_mediaBomba=false
					Global.tiene_carnePodrida=false
					Global.tiene_bombaOlor=true
				Global.tiene_pedernal=false
				$FX.play()
			elif(fusionable==agua_sucia):
				if(!Global.tiene_mediaBomba):
					Global.tiene_mediaBomba=true
				else:
					Global.tiene_mediaBomba=false
					Global.tiene_carnePodrida=false
					Global.tiene_bombaOlor=true
				Global.tiene_aguaSucia=false
				$FX.play()
		mascara_verdugo:
			if(fusionable==imagen_menta[0]):
				if(!Global.tiene_unTercioMascar):
					Global.tiene_unTercioMascar=true
				else:
					if(!Global.tiene_dosTerciosMascara):
						Global.tiene_dosTerciosMascara=true
					else:
						Global.tiene_unTercioMascar=false
						Global.tiene_dosTerciosMascara=false
						Global.tiene_mascaraVerdugo=false
						Global.tiene_mascaraAntiOlor=true
				Global.tiene_menta=false
				$FX.play()
			elif(fusionable==imagen_aloeBlanco[0]):
				if(!Global.tiene_unTercioMascar):
					Global.tiene_unTercioMascar=true
				else:
					if(!Global.tiene_dosTerciosMascara):
						Global.tiene_dosTerciosMascara=true
					else:
						Global.tiene_unTercioMascar=false
						Global.tiene_dosTerciosMascara=false
						Global.tiene_mascaraVerdugo=false
						Global.tiene_mascaraAntiOlor=true
				Global.tiene_aloeBlanco=false
				$FX.play()
			elif(fusionable==imagen_laurel1[0]):
				if(!Global.tiene_unTercioMascar):
					Global.tiene_unTercioMascar=true
				else:
					if(!Global.tiene_dosTerciosMascara):
						Global.tiene_dosTerciosMascara=true
					else:
						Global.tiene_unTercioMascar=false
						Global.tiene_dosTerciosMascara=false
						Global.tiene_mascaraVerdugo=false
						Global.tiene_mascaraAntiOlor=true
				Global.tiene_laurel1=false
				$FX.play()
		menta:
			if(fusionable==mascara_verdugo):
				if(!Global.tiene_unTercioMascar):
					Global.tiene_unTercioMascar=true
				else:
					if(!Global.tiene_dosTerciosMascara):
						Global.tiene_dosTerciosMascara=true
					else:
						Global.tiene_unTercioMascar=false
						Global.tiene_dosTerciosMascara=false
						Global.tiene_menta=false
						Global.tiene_mascaraAntiOlor=true
				Global.tiene_mascaraVerdugo=false
				$FX.play()
			elif(fusionable==imagen_aloeBlanco[0]):
				if(!Global.tiene_unTercioMascar):
					Global.tiene_unTercioMascar=true
				else:
					if(!Global.tiene_dosTerciosMascara):
						Global.tiene_dosTerciosMascara=true
					else:
						Global.tiene_unTercioMascar=false
						Global.tiene_dosTerciosMascara=false
						Global.tiene_menta=false
						Global.tiene_mascaraAntiOlor=true
				Global.tiene_aloeBlanco=false
				$FX.play()
			elif(fusionable==imagen_laurel1[0]):
				if(!Global.tiene_unTercioMascar):
					Global.tiene_unTercioMascar=true
				else:
					if(!Global.tiene_dosTerciosMascara):
						Global.tiene_dosTerciosMascara=true
					else:
						Global.tiene_unTercioMascar=false
						Global.tiene_dosTerciosMascara=false
						Global.tiene_menta=false
						Global.tiene_mascaraAntiOlor=true
				Global.tiene_laurel1=false
				$FX.play()
		aloe:
			if(fusionable==imagen_menta[0]):
				if(!Global.tiene_unTercioMascar):
					Global.tiene_unTercioMascar=true
				else:
					if(!Global.tiene_dosTerciosMascara):
						Global.tiene_dosTerciosMascara=true
					else:
						Global.tiene_unTercioMascar=false
						Global.tiene_dosTerciosMascara=false
						Global.tiene_aloeBlanco=false
						Global.tiene_mascaraAntiOlor=true
				Global.tiene_menta=false
				$FX.play()
			elif(fusionable==mascara_verdugo):
				if(!Global.tiene_unTercioMascar):
					Global.tiene_unTercioMascar=true
				else:
					if(!Global.tiene_dosTerciosMascara):
						Global.tiene_dosTerciosMascara=true
					else:
						Global.tiene_unTercioMascar=false
						Global.tiene_dosTerciosMascara=false
						Global.tiene_aloeBlanco=false
						Global.tiene_mascaraAntiOlor=true
				Global.tiene_mascaraVerdugo=false
				$FX.play()
			elif(fusionable==imagen_laurel1[0]):
				if(!Global.tiene_unTercioMascar):
					Global.tiene_unTercioMascar=true
				else:
					if(!Global.tiene_dosTerciosMascara):
						Global.tiene_dosTerciosMascara=true
					else:
						Global.tiene_unTercioMascar=false
						Global.tiene_dosTerciosMascara=false
						Global.tiene_aloeBlanco=false
						Global.tiene_mascaraAntiOlor=true
				Global.tiene_laurel1=false
				$FX.play()
		laurel:
			if(fusionable==imagen_menta[0]):
				if(!Global.tiene_unTercioMascar):
					Global.tiene_unTercioMascar=true
				else:
					if(!Global.tiene_dosTerciosMascara):
						Global.tiene_dosTerciosMascara=true
					else:
						Global.tiene_unTercioMascar=false
						Global.tiene_dosTerciosMascara=false
						Global.tiene_laurel1=false
						Global.tiene_mascaraAntiOlor=true
				Global.tiene_menta=false
				$FX.play()
			elif(fusionable==imagen_aloeBlanco[0]):
				if(!Global.tiene_unTercioMascar):
					Global.tiene_unTercioMascar=true
				else:
					if(!Global.tiene_dosTerciosMascara):
						Global.tiene_dosTerciosMascara=true
					else:
						Global.tiene_unTercioMascar=false
						Global.tiene_dosTerciosMascara=false
						Global.tiene_laurel1=false
						Global.tiene_mascaraAntiOlor=true
				Global.tiene_aloeBlanco=false
				$FX.play()
			elif(fusionable==mascara_verdugo):
				if(!Global.tiene_unTercioMascar):
					Global.tiene_unTercioMascar=true
				else:
					if(!Global.tiene_dosTerciosMascara):
						Global.tiene_dosTerciosMascara=true
					else:
						Global.tiene_unTercioMascar=false
						Global.tiene_dosTerciosMascara=false
						Global.tiene_laurel1=false
						Global.tiene_mascaraAntiOlor=true
				Global.tiene_mascaraVerdugo=false
				$FX.play()
		munieca_trapo:
			if(fusionable==imagen_azucarLunar[0]):
				Global.tiene_azucarLunar=false
				Global.tiene_muniecaTrapo=false
				Global.tiene_muniecamaldita=true
				$FX.play()
		azucar_lunar:
			if(fusionable==munieca_trapo):
				Global.tiene_azucarLunar=false
				Global.tiene_muniecaTrapo=false
				Global.tiene_muniecamaldita=true
				$FX.play()
		tinta:
			if(fusionable==imagen_ceniza[0]):
				Global.tiene_ceniza=false
				Global.tiene_tintero=false
				Global.tiene_tinteroConCeniza=true
				$FX.play()
		ceniza:
			if(fusionable==tinta):
				Global.tiene_ceniza=false
				Global.tiene_tintero=false
				Global.tiene_tinteroConCeniza=true
				$FX.play()
		anzuelo:
			if(fusionable==imagen_pegamento[0]):
				Global.tiene_anzuelo=false
				Global.tiene_pegamentoMagico=false
				Global.tiene_anzueloConPegamento=true
				$FX.play()
		pegamento:
			if(fusionable==pegamento):
				Global.tiene_anzuelo=false
				Global.tiene_pegamentoMagico=false
				Global.tiene_anzueloConPegamento=true
				$FX.play()
		hilo:
			if(fusionable==imagen_anzueloMagico[0]):
				Global.tiene_anzueloConPegamento=false
				Global.tiene_hilo=false
				Global.tiene_hiloConAnzueloMagico=true
				$FX.play()
		anzuelo_magico:
			if(fusionable==hilo):
				Global.tiene_anzueloConPegamento=false
				Global.tiene_hilo=false
				Global.tiene_hiloConAnzueloMagico=true
				$FX.play()
		Disolvente:
			if(fusionable==imagen_pincelAnzuelo[0]):
				Global.tiene_disolventeMagico=false
				Global.tiene_pincelConAnzuelo=false
				Global.tiene_pincel=true
				$FX.play()
		pincel_anzuelo:
			if(fusionable==Disolvente):
				Global.tiene_disolventeMagico=false
				Global.tiene_pincelConAnzuelo=false
				Global.tiene_pincel=true
				$FX.play()
		pincel:
			if(fusionable==imagen_tinteroCeniza[0]):
				Global.tiene_pincel=false
				Global.tiene_tinteroConCeniza=false
				Global.tiene_pincelConTintaCeniza=true
				$FX.play()
		tintero_ceniza:
			if(fusionable==pincel):
				Global.tiene_pincel=false
				Global.tiene_tinteroConCeniza=false
				Global.tiene_pincelConTintaCeniza=true
				$FX.play()
		papel:
			if(fusionable==imagen_pincelTintaCeniza[0]):
				Global.tiene_papel=false
				Global.tiene_pincelConTintaCeniza=false
				Global.tiene_talisman=true
				$FX.play()
		pincel_tintaCeniza:
			if(fusionable==papel):
				Global.tiene_papel=false
				Global.tiene_pincelConTintaCeniza=false
				Global.tiene_talisman=true
				$FX.play()

func _on_slot_0_click():
	if(!is_selected):
		$Slot_inventario0/Button.remove_theme_stylebox_override("focus")
	else:
		$Slot_inventario0/Button.add_theme_stylebox_override("focus",StyleBoxEmpty.new())
	seleccion($Slot_inventario0/ColorRect/TextureRect.texture)
func _on_slot_1_click():
	if(!is_selected):
		$Slot_inventario1/Button.remove_theme_stylebox_override("focus")
	else:
		$Slot_inventario1/Button.add_theme_stylebox_override("focus",StyleBoxEmpty.new())
	seleccion($Slot_inventario1/ColorRect/TextureRect.texture)
func _on_click_slot_2():
	if(!is_selected):
		$Slot_inventario2/Button.remove_theme_stylebox_override("focus")
	else:
		$Slot_inventario2/Button.add_theme_stylebox_override("focus",StyleBoxEmpty.new())
	seleccion($Slot_inventario2/ColorRect/TextureRect.texture)
func _on_click_slot_3():
	if(!is_selected):
		$Slot_inventario3/Button.remove_theme_stylebox_override("focus")
	else:
		$Slot_inventario3/Button.add_theme_stylebox_override("focus",StyleBoxEmpty.new())
	seleccion($Slot_inventario3/ColorRect/TextureRect.texture)
func _on_click_slot_4():
	if(!is_selected):
		$Slot_inventario4/Button.remove_theme_stylebox_override("focus")
	else:
		$Slot_inventario4/Button.add_theme_stylebox_override("focus",StyleBoxEmpty.new())
	seleccion($Slot_inventario4/ColorRect/TextureRect.texture)
func _on_click_slot_5():
	if(!is_selected):
		$Slot_inventario5/Button.remove_theme_stylebox_override("focus")
	else:
		$Slot_inventario5/Button.add_theme_stylebox_override("focus",StyleBoxEmpty.new())
	seleccion($Slot_inventario5/ColorRect/TextureRect.texture)
func _on_click_slot_6():
	if(!is_selected):
		$Slot_inventario6/Button.remove_theme_stylebox_override("focus")
	else:
		$Slot_inventario6/Button.add_theme_stylebox_override("focus",StyleBoxEmpty.new())
	seleccion($Slot_inventario6/ColorRect/TextureRect.texture)
func _on_click_slot_7():
	if(!is_selected):
		$Slot_inventario7/Button.remove_theme_stylebox_override("focus")
	else:
		$Slot_inventario7/Button.add_theme_stylebox_override("focus",StyleBoxEmpty.new())
	seleccion($Slot_inventario7/ColorRect/TextureRect.texture)
func _on_click_slot_8():
	if(!is_selected):
		$Slot_inventario8/Button.remove_theme_stylebox_override("focus")
	else:
		$Slot_inventario8/Button.add_theme_stylebox_override("focus",StyleBoxEmpty.new())
	seleccion($Slot_inventario8/ColorRect/TextureRect.texture)
func _on_click_slot_9():
	if(!is_selected):
		$Slot_inventario9/Button.remove_theme_stylebox_override("focus")
	else:
		$Slot_inventario9/Button.add_theme_stylebox_override("focus",StyleBoxEmpty.new())
	seleccion($Slot_inventario9/ColorRect/TextureRect.texture)
func _on_click_slot_10():
	if(!is_selected):
		$Slot_inventario10/Button.remove_theme_stylebox_override("focus")
	else:
		$Slot_inventario10/Button.add_theme_stylebox_override("focus",StyleBoxEmpty.new())
	seleccion($Slot_inventario10/ColorRect/TextureRect.texture)
func _on_click_slot_11():
	if(!is_selected):
		$Slot_inventario11/Button.remove_theme_stylebox_override("focus")
	else:
		$Slot_inventario11/Button.add_theme_stylebox_override("focus",StyleBoxEmpty.new())
	seleccion($Slot_inventario11/ColorRect/TextureRect.texture)


func nombre_objeto(numSlot,esta_adentro):
	if(esta_adentro):
		$ColorRect.visible=true
		match(numSlot):
			1:
				$ColorRect/Label.text=$Slot_inventario0/Label.text
			2: 
				$ColorRect/Label.text=$Slot_inventario1/Label.text
			3:
				$ColorRect/Label.text=$Slot_inventario2/Label.text
			4:
				$ColorRect/Label.text=$Slot_inventario3/Label.text
			5:
				$ColorRect/Label.text=$Slot_inventario4/Label.text
			6:
				$ColorRect/Label.text=$Slot_inventario5/Label.text
			7:
				$ColorRect/Label.text=$Slot_inventario6/Label.text
			8:
				$ColorRect/Label.text=$Slot_inventario7/Label.text
			9:
				$ColorRect/Label.text=$Slot_inventario8/Label.text
			10:
				$ColorRect/Label.text=$Slot_inventario9/Label.text
			11: 
				$ColorRect/Label.text=$Slot_inventario10/Label.text
			12:
				$ColorRect/Label.text=$Slot_inventario11/Label.text
	else:
		$ColorRect.visible=false
		$ColorRect/Label.text=""


func _on_slot_0_mouse_entered():
	if($Slot_inventario0/ColorRect/TextureRect.texture!=null):
		nombre_objeto(1,true)
func _on_slot_0_mouse_exited():
	nombre_objeto(1,false)
func _on_slot_1_mouse_entered():
	if($Slot_inventario1/ColorRect/TextureRect.texture!=null):
		nombre_objeto(2,true)
func _on_slot_1_mouse_exited():
	nombre_objeto(2,false)
func _on_slot_2_mouse_entered():
	if($Slot_inventario2/ColorRect/TextureRect.texture!=null):
		nombre_objeto(3,true)
func _on_slot_2_mouse_exited():
	nombre_objeto(3,false)
func _on_slot_3_mouse_entered():
	if($Slot_inventario3/ColorRect/TextureRect.texture!=null):
		nombre_objeto(4,true)
func _on_slot_3_mouse_exited():
	nombre_objeto(4,false)
func _on_slot_4_mouse_entered():
	if($Slot_inventario4/ColorRect/TextureRect.texture!=null):
		nombre_objeto(5,true)
func _on_slot_4_mouse_exited():
	nombre_objeto(5,false)
func _on_slot_5_mouse_entered():
	if($Slot_inventario5/ColorRect/TextureRect.texture!=null):
		nombre_objeto(6,true)
func _on_slot_5_mouse_exited():
	nombre_objeto(6,false)
func _on_slot_6_mouse_entered():
	if($Slot_inventario6/ColorRect/TextureRect.texture!=null):
		nombre_objeto(7,true)
func _on_slot_6_mouse_exited():
	nombre_objeto(7,false)
func _on_slot_7_mouse_entered():
	if($Slot_inventario7/ColorRect/TextureRect.texture!=null):
		nombre_objeto(8,true)
func _on_slot_7_mouse_exited():
	nombre_objeto(8,false)
func _on_slot_8_mouse_entered():
	if($Slot_inventario8/ColorRect/TextureRect.texture!=null):
		nombre_objeto(9,true)
func _on_slot_8_mouse_exited():
	nombre_objeto(9,false)
func _on_slot_9_mouse_entered():
	if($Slot_inventario9/ColorRect/TextureRect.texture!=null):
		nombre_objeto(10,true)
func _on_slot_9_mouse_exited():
	nombre_objeto(10,false)
func _on_slot_10_mouse_entered():
	if($Slot_inventario10/ColorRect/TextureRect.texture!=null):
		nombre_objeto(11,true)
func _on_slot_10_mouse_exited():
	nombre_objeto(11,false)
func _on_slot_11_mouse_entered():
	if($Slot_inventario11/ColorRect/TextureRect.texture!=null):
		nombre_objeto(12,true)
func _on_slot_11_mouse_exited():
	nombre_objeto(12,false)
