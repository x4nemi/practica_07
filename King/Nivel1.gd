extends Button


func _on_pressed():
	get_tree().change_scene_to_file("res://King/nivel_1.tscn")


func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://King/nivel_2.tscn")


func _on_button_3_pressed():
	get_tree().change_scene_to_file("res://King/nivel_3.tscn")


func _on_button_4_pressed():
	get_tree().quit()
