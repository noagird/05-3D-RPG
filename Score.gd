extends Label


func _physics_process(delta):
	if text == "Score: 600":
		get_tree().change_scene("res://UI/Win.tscn")
