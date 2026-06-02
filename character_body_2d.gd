extends CharacterBody2D
#initial speed
var speed=500
#load an animatesprite into variable
@onready var animate=$AnimatedSprite2D
#physics process to move an player and play a animation
func _physics_process(delta: float) -> void:
	var direction=Vector2.ZERO
	#movement of up side
	if Input.is_action_pressed("ui_up"):
		direction.y-=1;
		animate.play("up")
	#movement of down side
	elif Input.is_action_pressed("ui_down"):
		direction.y+=1;
		animate.play("down")
	#movement of left side
	elif Input.is_action_pressed("ui_left"):
		direction.x-=1;
		animate.play("left")
	#movement of right side
	elif Input.is_action_pressed("ui_right"):
		direction.x+=1;
		animate.play("right")
	# idle state
	else:
		animate.play("idle")
	#inialize a velocity
	velocity=direction.normalized()*speed
	#move and slide to move an player
	move_and_slide()
