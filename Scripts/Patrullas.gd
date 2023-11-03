extends PathFollow2D

@export var speedMovement=2

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#hace que los guardias se muevan por un camino
	self.progress=delta+speedMovement+self.progress
