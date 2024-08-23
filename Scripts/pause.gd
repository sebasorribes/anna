extends Node

@onready var player = get_parent().get_node("Player")
@onready var level = get_parent()
@onready var musicControl=get_parent().get_node("Music")
var paused : bool = false

func _ready():
	Engine.time_scale=1
	self.hide_pause()

func _process(delta):
	if (Input.is_action_just_pressed("pause")):
		pause_menu()

#TO DO: hacer mas lindo la parte de interactuar, cambiar todo el sistema de ser necesario
func pause_menu():
	if (paused):
		hide_pause()
		Engine.time_scale=1
		musicControl.stream_paused=false
		player.set_physics_process(true)
		player.get_child(2).set_process(true)
		player.get_child(3).set_process(true)
		player.get_child(4).set_process(true)
		player.get_child(5).set_process(true)
	else:
		show_pause()
		Engine.time_scale=0
		musicControl.stream_paused=true
		player.set_physics_process(false)
		player.get_child(2).set_process(false)
		player.get_child(3).set_process(false)
		player.get_child(4).set_process(false)
		player.get_child(5).set_process(false)
	
	paused=!paused

func hide_pause():
	self.visible=false
	$Resume.disabled=true
	$Menu.disabled=true

func show_pause():
	self.visible=true
	$Resume.disabled=false
	$Menu.disabled=false

func _on_resume_pressed():
	pause_menu()

func _on_menu_pressed():
	get_tree().change_scene_to_file("res://Scene/main_menu.tscn")
