extends Control

var contador

# Called when the node enters the scene tree for the first time.
func _ready():
	$Music.play()
	contador=0
	$parte1.visible=true
	$parte2.visible=false
	$parte3.visible=false
	$Sprite2D.visible=true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(contador==0):
		$parte1.visible=true
		$parte2.visible=false
		$parte3.visible=false
	elif(contador==1):
		$parte1.visible=false
		$parte2.visible=true
		$parte3.visible=false
	elif(contador==2):
		$parte1.visible=false
		$parte2.visible=false
		$parte3.visible=true
		$Sprite2D.visible=false
	else:
		get_tree().change_scene_to_file("res://Scene/main_menu.tscn")
	
	if(Input.is_action_just_pressed("interaction")):
		contador+=1
