extends AnimatedSprite2D

var lastposition

func _ready():
	lastposition=self.global_position



func _process(delta):
	patrulla()

func patrulla():
	var actualPosition=self.global_position
	if(actualPosition==lastposition):
		self.pause()
	else:
		if(actualPosition.x!=lastposition.x):
			self.play("sidewalk")
			self.flip_h=actualPosition.x<lastposition.x
		elif(actualPosition.y>lastposition.y):
			self.play("frontwalk")
		elif(actualPosition.y<lastposition.y):
			self.play("backwalk")
	lastposition=self.global_position
