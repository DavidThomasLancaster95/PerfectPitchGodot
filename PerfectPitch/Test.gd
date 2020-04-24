extends Node

var numQuestions = Start.numberOfQuestions
var questionsCorrect = 0
var currentQuestion = 1
var currentTone = "TODO"
var player = AudioStreamPlayer.new()
var playerChoosing = true
var arrayFromDict : Array

func _process(delta):
	if (currentQuestion > numQuestions):
		Start.resultNumber = questionsCorrect
		get_tree().change_scene("res://Results.tscn")

func _ready():
	self.add_child(player)
	disableNonKeys()
	getArrayFromDictionary()
	runGame()
	
func runGame():
	updateLabels()
	playRandomTone()	
	
func playRandomTone():
	currentTone = arrayFromDict[randi() % arrayFromDict.size()]	
	#$window.text = currentTone
	player.stream = load("res://Assets/Sounds/" + currentTone + "4.wav")
	player.play()
	
func getArrayFromDictionary():
	if (Start.selectedNotes["C"] == 1):
		arrayFromDict.append("C")
		
	if (Start.selectedNotes["CS"] == 1):
		arrayFromDict.append("CS")
		
	if (Start.selectedNotes["D"] == 1):
		arrayFromDict.append("D")
		
	if (Start.selectedNotes["DS"] == 1):
		arrayFromDict.append("DS")
		
	if (Start.selectedNotes["E"] == 1):
		arrayFromDict.append("E")
		
	if (Start.selectedNotes["F"] == 1):
		arrayFromDict.append("F")
		
	if (Start.selectedNotes["FS"] == 1):
		arrayFromDict.append("FS")
		
	if (Start.selectedNotes["G"] == 1):
		arrayFromDict.append("G")
		
	if (Start.selectedNotes["GS"] == 1):
		arrayFromDict.append("GS")
		
	if (Start.selectedNotes["A"] == 1):
		arrayFromDict.append("A")
		
	if (Start.selectedNotes["AS"] == 1):
		arrayFromDict.append("AS")
		
	if (Start.selectedNotes["B"] == 1):
		arrayFromDict.append("B")
	
func _on_QuitButton_pressed():
	get_tree().change_scene("res://Start.tscn")

func updateLabels():
	$ScoreLabel.text = "Score " + str(questionsCorrect) + "/" + str(currentQuestion - 1)
	$ProgressLabel.text = "Progress " + str(currentQuestion) + "/" + str(numQuestions)

func disableNonKeys():
	if (Start.selectedNotes["C"] == 0):
		$HBoxContainer/CButton.disabled = true
		
	if (Start.selectedNotes["CS"] == 0):
		$HBoxContainer/CSButton.disabled = true
		
	if (Start.selectedNotes["D"] == 0):
		$HBoxContainer/DButton.disabled = true
		
	if (Start.selectedNotes["DS"] == 0):
		$HBoxContainer/DSButton.disabled = true
		
	if (Start.selectedNotes["E"] == 0):
		$HBoxContainer/EButton.disabled = true
		
	if (Start.selectedNotes["F"] == 0):
		$HBoxContainer/FButton.disabled = true
		
	if (Start.selectedNotes["FS"] == 0):
		$HBoxContainer2/FSButton.disabled = true
		
	if (Start.selectedNotes["G"] == 0):
		$HBoxContainer2/GButton.disabled = true
		
	if (Start.selectedNotes["GS"] == 0):
		$HBoxContainer2/GSButton.disabled = true
		
	if (Start.selectedNotes["A"] == 0):
		$HBoxContainer2/AButton.disabled = true
		
	if (Start.selectedNotes["AS"] == 0):
		$HBoxContainer2/ASButton.disabled = true
		
	if (Start.selectedNotes["B"] == 0):
		$HBoxContainer2/BButton.disabled = true


func _on_CButton_pressed():
	if ($HBoxContainer/CButton.text == currentTone):
		$window.text = "Correct"
		questionsCorrect += 1
	else:
		$window.text = "Wrong"
	currentQuestion += 1
	runGame()

func _on_CSButton_pressed():
	if ($HBoxContainer/CSButton.text == currentTone):
		$window.text = "Correct"
		questionsCorrect += 1
	else:
		$window.text = "Wrong"	
	currentQuestion += 1
	runGame()


func _on_DButton_pressed():
	if ($HBoxContainer/DButton.text == currentTone):
		$window.text = "Correct"
		questionsCorrect += 1
	else:
		$window.text = "Wrong"
	currentQuestion += 1
	runGame()


func _on_DSButton_pressed():
	if ($HBoxContainer/DSButton.text == currentTone):
		$window.text = "Correct"
		questionsCorrect += 1
	else:
		$window.text = "Wrong"
	currentQuestion += 1
	runGame()


func _on_EButton_pressed():
	if ($HBoxContainer/EButton.text == currentTone):
		$window.text = "Correct"
		questionsCorrect += 1
	else:
		$window.text = "Wrong"
	currentQuestion += 1
	runGame()
	

func _on_FButton_pressed():
	if ($HBoxContainer/FButton.text == currentTone):
		$window.text = "Correct"
		questionsCorrect += 1
	else:
		$window.text = "Wrong"
	currentQuestion += 1
	runGame()

func _on_FSButton_pressed():
	if ($HBoxContainer2/FSButton.text == currentTone):
		$window.text = "Correct"
		questionsCorrect += 1
	else:
		$window.text = "Wrong"
	currentQuestion += 1
	runGame()


func _on_GButton_pressed():
	if ($HBoxContainer2/GButton.text == currentTone):
		$window.text = "Correct"
		questionsCorrect += 1
	else:
		$window.text = "Wrong"
	currentQuestion += 1
	runGame()


func _on_GSButton_pressed():
	if ($HBoxContainer2/GSButton.text == currentTone):
		$window.text = "Correct"
		questionsCorrect += 1
	else:
		$window.text = "Wrong"
	currentQuestion += 1
	runGame()


func _on_AButton_pressed():
	if ($HBoxContainer2/AButton.text == currentTone):
		$window.text = "Correct"
		questionsCorrect += 1
	else:
		$window.text = "Wrong"
	currentQuestion += 1
	runGame()


func _on_ASButton_pressed():
	if ($HBoxContainer2/ASButton.text == currentTone):
		$window.text = "Correct"
		questionsCorrect += 1
	else:
		$window.text = "Wrong"
	currentQuestion += 1
	runGame()


func _on_BButton_pressed():
	if ($HBoxContainer2/BButton.text == currentTone):
		$window.text = "Correct"
		questionsCorrect += 1
	else:
		$window.text = "Wrong"
	currentQuestion += 1
	runGame()


func _on_ReplayToneButton_pressed():
	player.stream = load("res://Assets/Sounds/" + currentTone + "4.wav")
	player.play()
