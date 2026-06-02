extends CharacterBody2D

const GRAVITY=800
const Jump_FORCE=-350
 
func _ready() -> void:
	$AnimatedSprite2D.play()
func _physics_process(delta: float) -> void:
	velocity.y+=GRAVITY*delta
	if Input.is_action_just_pressed("ui_accept"):
		$jumpsound.play()
		velocity.y=Jump_FORCE
	move_and_slide()
	rotation=velocity.y*0.0001
	if get_slide_collision_count() > 0:
		$hitsound.play()

		call_deferred("show_game_over")
func show_game_over():

	get_tree().paused = true

	get_parent().get_node("ui/gameover").visible = true

	get_parent().get_node("ui/restart").visible = true
