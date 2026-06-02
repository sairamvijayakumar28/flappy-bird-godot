extends Node2D

const  speed=500
signal scored
func _process(delta):
	position.x-=speed*delta
	if position.x<-500:
		queue_free()

func _on_scorearea_body_entered(body: Node2D) -> void:
	if body.name=="bird":
		$score.play()
		scored.emit()
