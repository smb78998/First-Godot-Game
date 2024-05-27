extends Node

var score = 0 
@onready var score_label = $ScoreLabel
@onready var variable_text = $VariableText


func add_point():
	score += 1
	
	if score <= 3 :
		variable_text.text = "Rough.."
	elif 3 < score && score <= 6:
		variable_text.text = "Okay.."
	elif 6 <score && score <=9:
		variable_text.text = "Good Job"
	elif 9 < score :
		variable_text.text = "Amazing Work!"
	
	score_label.text = "You collected " + str(score) + " of of 13 coins"
