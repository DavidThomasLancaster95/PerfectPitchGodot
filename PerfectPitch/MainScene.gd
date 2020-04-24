extends Node

var player = AudioStreamPlayer.new()


func _ready():
	$Label.text = str(Start.numberOfQuestions)
	self.add_child(player)


func _on_ChooseNotesButton_pressed():
	get_tree().change_scene("res://Choose.tscn")


func _on_Increment_pressed():
	player.stream = load("res://Assets/Sounds/button-50.wav")
	player.play()
	Start.numberOfQuestions += 1
	$Label.text = str(Start.numberOfQuestions)
	if (Start.numberOfQuestions > 1):
		$Decrement.disabled = false
	

func _on_Decrement_pressed():
	player.stream = load("res://Assets/Sounds/button-50.wav")
	player.play()
	Start.numberOfQuestions -= 1
	$Label.text = str(Start.numberOfQuestions)
	if (Start.numberOfQuestions == 1):
		$Decrement.disabled = true


func _on_StartButton_pressed():
	get_tree().change_scene("res://Test.tscn")
