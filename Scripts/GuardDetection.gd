extends RayCast2D

signal gameOver

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (self.is_colliding() and self.get_collider().name=="Player"):
		gameOver.emit()
