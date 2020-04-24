extends Node

var showResults = Start.resultNumber

func _ready():
	$Results.text = "Results " + str(showResults) + "/" + str(Start.numberOfQuestions)



func _on_Button_pressed():
	get_tree().change_scene("res://Start.tscn")
