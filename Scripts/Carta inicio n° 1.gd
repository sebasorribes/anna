extends Control

@onready var player = get_parent().get_node("Player")

# Called when the node enters the scene tree for the first time.
func _ready():
	player.set_physics_process(false)
	$NextDialog/AnimationPlayer.play("p")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Input.is_action_just_pressed("interaction")):
		player.set_physics_process(true)
		self.queue_free()


