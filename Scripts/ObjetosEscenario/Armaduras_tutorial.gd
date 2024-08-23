extends Interactable


func interact():
	var textito
	textito=[
		 "Estas antiguas armaduras en mi casa parecen guardianes majestuosos, ¿verdad? \n¡Pero déjame decirte un secreto: si alguna vez intentas ponértelas, terminarás pareciendo un caballero torpe en una lata de refrescos mágicos! Además, las hechicé para que hagan ruidos de 'clank-clank' en medio de la noche, para ahuyentar a los ladrones... o despertarme de un buen susto a mí misma."
	]
	Global.dialog=textito
	Global.hay_dialogo=true
