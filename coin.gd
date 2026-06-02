extends Area2D

var spin_sped=5.0
func _process(delta: float) -> void:
	scale.x=abs(sin(Time.get_ticks_msec()*0.001*spin_sped))

func _on_body_entered(body: Node2D) -> void:
	if body.name=="bird":
		queue_free()
