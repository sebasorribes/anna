extends Node

#Script con variables globales para interaccion entre distintos objetos

var hay_dialogo=false
var dialog : Array=[
	'Funciona?'
]

################################################################################################################
#TUTORIAL
var tiene_FrascoTutorial=false
var tiene_FlorAzulMotania=false
var tiene_colaRataTutoria=false
var tiene_mediaPocion=false
var tiene_pocion=false
var tiene_llave= false
var final_tutorial=false

var puzzles_tutorial=[tiene_FrascoTutorial,tiene_FlorAzulMotania,tiene_colaRataTutoria,tiene_pocion,tiene_llave]

var hacia_comerdor=false
var posicion_spawn_comedor=Vector2(760,312)
var hacia_habitacion=false
var posicion_spawn_habitacion=Vector2(760,608)

##################################################################################################################
#Nivel 1
var tiene_musgoAguaNegra=false
var tiene_polvoHueso=false
var tiene_aserrin= false
var tiene_medioToxico=false
var tiene_pociontoxica=false
var tiene_hongoAlucinogeno=false
var tiene_cera = false
var tiene_hiervaMontania=false
var tiene_mediaAlucinacion=false
var tiene_pocionAlucinogena=false
var tiene_aceite= false
var tiene_licor=false
var tiene_polvoNegro=false
var tiene_mediaSonora=false
var tiene_pocionSonora=false
var tiene_aguaContaminada=false
var tiene_peloRata=false
var tiene_lenguaRana=false
var tiene_mediaRatificadora=false
var tiene_pocionRatificadora=false
var tiene_piedraFusion=false
var tiene_miel3=false
var tiene_cardo3=false
var tiene_mediaCongelante=false
var tiene_pocionCongelante=false
var final_nivel1=false

var puzzlesNivel1=[
	tiene_musgoAguaNegra,tiene_polvoHueso,tiene_aserrin,tiene_pociontoxica,tiene_hongoAlucinogeno,tiene_cera,
	tiene_hiervaMontania,tiene_pocionAlucinogena,tiene_aceite,tiene_licor,tiene_polvoNegro,tiene_pocionSonora,
	tiene_aguaContaminada,tiene_peloRata,tiene_lenguaRana,tiene_pocionRatificadora,tiene_piedraFusion,tiene_miel3,
	tiene_cardo3,tiene_pocionCongelante
]

##########################################################################################################################
#Nivel2
var tiene_aguaSucia=false
var tiene_pedernal=false
var tiene_carnePodrida=false
var tiene_mediaBomba=false
var tiene_bombaOlor=false
var tiene_mascaraVerdugo=false
var tiene_menta=false
var tiene_aloeBlanco=false
var tiene_laurel1=false
var tiene_unTercioMascar
var tiene_dosTerciosMascara=false
var tiene_mascaraAntiOlor=false
var tiene_muniecaTrapo=false
var tiene_azucarLunar=false
var tiene_mediaMaldito=false
var tiene_muniecamaldita=false

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

var puzzlesNivel2 = [
	tiene_aguaSucia,tiene_pedernal, tiene_carnePodrida, tiene_bombaOlor, tiene_mascaraVerdugo, 
	tiene_menta,tiene_aloeBlanco, tiene_laurel1, tiene_mascaraAntiOlor, 
	tiene_muniecaTrapo, tiene_azucarLunar, tiene_muniecamaldita
]

var final_nivel3=false
