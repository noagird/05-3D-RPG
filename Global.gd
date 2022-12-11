extends Node

var timer = 0
var score = 0

func _input(_event):
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()


func update_score(s):
	score += s
	get_node("/root/UI/Score")
	
func update_time():
	var t_m = floor(timer / 60.0)
	var t_s = timer % 60
	var t = "Time: %02d" % t_m 
	print(t)
	t += ":%02d" % t_s
	get_node("/root/Game/UI/Time").text = t
