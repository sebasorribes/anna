extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	#cuando el raycast del guardia colisiona con el jugador, cambia al nivel principal
	#TO DO: crear escena de GameOver y ponerla
	if ($GuardDetection.is_colliding() and $GuardDetection.get_collider().name=="Player"):
		get_tree().change_scene_to_file("res://Scene/main_menu.tscn")
