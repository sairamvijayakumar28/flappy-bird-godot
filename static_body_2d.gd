extends StaticBody2D

var speed=800
@onready var animate=$AnimatedSprite2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	animate.play("flying")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x-=speed*delta
	if position.x<-500:
		queue_free()
