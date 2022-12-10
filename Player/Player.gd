extends KinematicBody

onready var camera = get_node_or_null("/Game/Player/Pivot/Camera")

func _physics_process(_delta):
	pass
	
func get_input():
	var input_dir = Vector3()
	if Input.is_action_pressed("forward"):
		pass
