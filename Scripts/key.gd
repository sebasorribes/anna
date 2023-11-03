extends Interactable

var contador : int = 0

func interact():
	var textito=[
		"Es una llave",
		"no es nada más"
	]
	
	Global.dialog=textito
	dialog_scene.instantiate().next_text()
	
	contador+=1
	
	if(contador==2):
		self.queue_free()
		Global.agarrar_llave=true
	
