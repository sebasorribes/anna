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
			flag=false
			self.visible=0
			Global.hay_dialogo=false
			final_tutorial()

func final_tutorial():
	if(Global.final_tutorial):
		get_tree().change_scene_to_file("res://Scene/nivel1.tscn")
