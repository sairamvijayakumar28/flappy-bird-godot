extends Sprite2D

const speed=300
func _process(delta: float) -> void:
	position.x-=speed*delta
	if position.x<-300:
		queue_free()
		
