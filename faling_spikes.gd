extends Node2D

@export var speed = 160.0
var current_speed = 0.0


func _physics_process(delta):
	position.y += current_speed * delta

func _on_player_detect_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		body.die()
		queue_free()





func fall():
	current_speed = speed
	await get_tree().create_timer(5).timeout
	queue_free()
