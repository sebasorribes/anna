extends Area2D


var velocity=1.0
signal gameOver

var lastposition
# Called when the node enters the scene tree for the first time.
func _ready():
	$RightGuardDetection.enabled=false
	$LeftGuardDetection.enabled=false
	$UpGuardDetection.enabled=false
	$AnimatedSprite2D.play()
	get_parent().play("down")
	lastposition=self.global_position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta : float):
	patrulla()

func _physics_process(delta):
	pass

func patrulla():
	var actualPosition=self.global_position
	if(actualPosition==lastposition):
		$AnimatedSprite2D.pause()
	else:
		if(actualPosition.x!=lastposition.x):
			$AnimatedSprite2D.play("side")
			$AnimatedSprite2D.flip_h=actualPosition.x<lastposition.x
		elif(actualPosition.y>lastposition.y):
			$AnimatedSprite2D.play("front")
		elif(actualPosition.y<lastposition.y):
			$AnimatedSprite2D.play("back")
	
	lastposition=self.global_position

func randomPath():
	var random = randi_range(1,4)
	
	match random:
		1:
			get_parent().play("up")
		2:
			get_parent().play("right")
		3:
			get_parent().play("left_down")
		4:
			get_parent().play("left_up")

func _on_timer_timeout():
	randomPath()
