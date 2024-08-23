extends Control

var dialog_index: int =0
var flag =false

func _ready():
	self.visible=false

func _process(delta):
	if(Global.hay_dialogo):
		if (Input.is_action_just_pressed("interaction")):
			next_text()

#Muestra una ventana de dialogo con el texto que se encuentra en el array global "dialog"
func next_text():
	if(flag==false):
		dialog_index=0
		$TextTalk.text = Global.dialog[dialog_index]
		$NextDialog.visible=1
		flag=true
		self.visible=1
	else:
		if (dialog_index< Global.dialog.size()-1):
			dialog_index += 1
			$TextTalk.text=Global.dialog[dialog_index]
			$NextDialog.visible=1
		else:
			resumePlayer()
			flag=false
			self.visible=0
			Global.hay_dialogo=false
			final_tutorial()
			final_nivel2()
			final_nivel3()

func final_tutorial():
	if(Global.final_tutorial):
		Global.final_tutorial=false
		get_tree().change_scene_to_file("res://Scene/nivel1.tscn")

func final_nivel2():
	if(Global.final_nivel2):
		Global.final_nivel2=false
		get_tree().change_scene_to_file("res://Scene/tile_map3.tscn")

func final_nivel3():
	if(Global.final_nivel3):
		Global.final_nivel3=false
		get_tree().change_scene_to_file("res://Scene/final.tscn")

func resumePlayer():
	get_parent().get_node("Player").set_physics_process(true)
	get_parent().get_node("Player").get_child(2).set_process(true)
	get_parent().get_node("Player").get_child(3).set_process(true)
	get_parent().get_node("Player").get_child(4).set_process(true)
	get_parent().get_node("Player").get_child(5).set_process(true)
