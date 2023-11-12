extends Area2D


func _on_Heart_body_entered(body):
	queue_free()
	get_tree().change_scene_to_file("res://King/Niveles.tscn")
	pass # Replace with function body.
