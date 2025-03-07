extends Control


var save_path = "user://Lavel.data"
var Level = 1
var LevelData = []
#Level
var Level2 = false
var Level3 = false
var Level4 = false
var Level5 = false
var Level6 = false
var Level7 = false
var Level8 = false

func _ready():

	var file = File.new()
	
	if file.file_exists(save_path):
		var error = file.open(save_path , File.READ)
		if error == OK:
			LevelData  = file.get_var()
			file.close()

			
			for data in LevelData:
				if data == 2:
					$Sprite/Level2/lock.visible = false
					Level2 = true
				if data == 3:
					$Sprite/Level3/lock.visible = false
					Level3 = true
				if data == 4:
					$Sprite/Level4/lock.visible = false
					Level4 = true
				if data == 5:
					$Sprite/Level5/lock.visible = false
					Level5 = true
				if data == 6:
					$Sprite/Level6/lock.visible = false
					Level6 = true
				if data == 7:
					$Sprite/Level7/lock.visible = false
					Level7 = true
				if data == 8:
					$Sprite/Level8/lock.visible = false
					Level8 = true
		
func _physics_process(delta):
	
	
	pass
		


func _on_Level1_pressed():

	get_tree().change_scene("res://Level1.tscn")
	

func _on_Level2_pressed():
	
	if Level2 == true:
		get_tree().change_scene("res://Level2.tscn")


func _on_Level3_pressed():
	
	if Level3 == true:
		get_tree().change_scene("res://Level3.tscn")


func _on_Level4_pressed():

	if Level4 == true:
		get_tree().change_scene("res://Level4.tscn")


func _on_Level5_pressed():
	
	if Level5 == true:
		get_tree().change_scene("res://Level5.tscn")


func _on_Level6_pressed():
	
	if Level6 == true:
		get_tree().change_scene("res://Level6.tscn")


func _on_Level7_pressed():
	
	if Level7 == true:
		get_tree().change_scene("res://Level7.tscn")

			
func _on_Level8_pressed():
	
	if Level8 == true:
		get_tree().change_scene("res://Level8.tscn")

	


func _on_HomeButton_pressed():
	get_tree().change_scene("res://Home.tscn")
