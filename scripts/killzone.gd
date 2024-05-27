extends Area2D
@onready var timer = $Timer


func _on_body_entered(body):
	print("You died")
	Engine.time_scale = .5
	body.get_node("CollisionShape2D").queue_free()
	timer.start()

func _on_timer_timeout():#runs when timer ends
	Engine.time_scale = 1
	get_tree().reload_current_scene()
