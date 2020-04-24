extends Node

var arrayFromDict : Array

func _ready():
	allButtonsRight()
	


func allButtonsRight():
	if (Start.selectedNotes["C"] == 1):
		$VBoxContainer2/CCheck.pressed = true
	else:
		$VBoxContainer2/CCheck.pressed = false
		
	if (Start.selectedNotes["CS"] == 1):
		$VBoxContainer2/CSCheck.pressed = true
	else:
		$VBoxContainer2/CSCheck.pressed = false
		
	if (Start.selectedNotes["D"] == 1):
		$VBoxContainer2/DCheck.pressed = true
	else:
		$VBoxContainer2/DCheck.pressed = false
		
	if (Start.selectedNotes["DS"] == 1):
		$VBoxContainer2/DSCheck.pressed = true
	else:
		$VBoxContainer2/DSCheck.pressed = false

	if (Start.selectedNotes["E"] == 1):
		$VBoxContainer2/ECheck.pressed = true
	else:
		$VBoxContainer2/ECheck.pressed = false
		
	if (Start.selectedNotes["F"] == 1):
		$VBoxContainer2/FCheck.pressed = true
	else:
		$VBoxContainer2/FCheck.pressed = false
		
	if (Start.selectedNotes["FS"] == 1):
		$VBoxContainer2/FSCheck.pressed = true
	else:
		$VBoxContainer2/FSCheck.pressed = false
		
	if (Start.selectedNotes["G"] == 1):
		$VBoxContainer2/GCheck.pressed = true
	else:
		$VBoxContainer2/GCheck.pressed = false
		
	if (Start.selectedNotes["GS"] == 1):
		$VBoxContainer2/GSCheck.pressed = true
	else:
		$VBoxContainer2/GSCheck.pressed = false
		
	if (Start.selectedNotes["A"] == 1):
		$VBoxContainer2/ACheck.pressed = true
	else:
		$VBoxContainer2/ACheck.pressed = false
		
	if (Start.selectedNotes["AS"] == 1):
		$VBoxContainer2/ASCheck.pressed = true
	else:
		$VBoxContainer2/ASCheck.pressed = false
		
	if (Start.selectedNotes["B"] == 1):
		$VBoxContainer2/BCheck.pressed = true
	else:
		$VBoxContainer2/BCheck.pressed = false

func _on_ReturnButton_pressed():
	getArrayFromDictionary()
	if (arrayFromDict.size() > 0):
		get_tree().change_scene("res://Start.tscn")
	else:
		$warning.text = "Select at least 1 note"

func _on_CCheck_toggled(button_pressed):
	if (button_pressed == true):
		Start.selectedNotes["C"] = 1
	else:
		Start.selectedNotes["C"] = 0
		
func _on_CSCheck_toggled(button_pressed):
	if (button_pressed == true):
		Start.selectedNotes["CS"] = 1
	else:
		Start.selectedNotes["CS"] = 0

func _on_DCheck_toggled(button_pressed):
	if (button_pressed == true):
		Start.selectedNotes["D"] = 1
	else:
		Start.selectedNotes["D"] = 0

func _on_DSCheck_toggled(button_pressed):
	if (button_pressed == true):
		Start.selectedNotes["DS"] = 1
	else:
		Start.selectedNotes["DS"] = 0

func _on_ECheck_toggled(button_pressed):
	if (button_pressed == true):
		Start.selectedNotes["E"] = 1
	else:
		Start.selectedNotes["E"] = 0

func _on_FCheck_toggled(button_pressed):
	if (button_pressed == true):
		Start.selectedNotes["F"] = 1
	else:
		Start.selectedNotes["F"] = 0

func _on_FSCheck_toggled(button_pressed):
	if (button_pressed == true):
		Start.selectedNotes["FS"] = 1
	else:
		Start.selectedNotes["FS"] = 0

func _on_GCheck_toggled(button_pressed):
	if (button_pressed == true):
		Start.selectedNotes["G"] = 1
	else:
		Start.selectedNotes["G"] = 0

func _on_GSCheck_toggled(button_pressed):
	if (button_pressed == true):
		Start.selectedNotes["GS"] = 1
	else:
		Start.selectedNotes["GS"] = 0
		
func _on_ACheck_toggled(button_pressed):
	if (button_pressed == true):
		Start.selectedNotes["A"] = 1
	else:
		Start.selectedNotes["A"] = 0

func _on_ASCheck_toggled(button_pressed):
	if (button_pressed == true):
		Start.selectedNotes["AS"] = 1
	else:
		Start.selectedNotes["AS"] = 0

func _on_BCheck_toggled(button_pressed):
	if (button_pressed == true):
		Start.selectedNotes["B"] = 1
	else:
		Start.selectedNotes["B"] = 0
		
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
