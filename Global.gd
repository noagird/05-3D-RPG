extends Node

var timer = 0
var score = 0

func reset():
	timer = 0
	score = 0
	update_score(0)

func _input(_event):
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()


func update_score(s):
	score += s
	var Score_UI = get_node("/root/Game/UI/Score")
	Score_UI.text = "Score: " + str(score)
	
	
func update_time():
	var t_m = floor(timer / 60.0)
	var t_s = timer % 60
	var t = "Time: %02d" % t_m 
	print(t)
	t += ":%02d" % t_s
	get_node("/root/Game/UI/Time").text = t


