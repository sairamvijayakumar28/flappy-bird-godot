extends Node2D
var score=0
@export var pipe_scence:PackedScene
@export var crow_scence:PackedScene
func _ready() -> void:
	$Timer.start()
	$Timer2.start()
func _on_timer_timeout() -> void:
	var pipe=pipe_scence.instantiate()
	pipe.position.x=1200
	pipe.position.y=randi_range(50,200)
	pipe.scored.connect(add_score)
	add_child(pipe)


func add_score():
	score+=1
	$score/value.text=str(score)

func _on_restart_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()


func _on_timer_2_timeout() -> void:
		var crow=crow_scence.instantiate()
		crow.position.x=randi_range(1000,1200)
		crow.position.y=randi_range(50,200)
		add_child(crow)
