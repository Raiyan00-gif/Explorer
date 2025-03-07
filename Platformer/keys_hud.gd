extends Node2D

var key = load("res://Assets/4 Animated objects/keys/Key1.png")
signal keys_fulfilled
signal settingButton_pressed

var key1 = false 
var key2 = false 
var key3 = false 

var sprite_num = 0

func key_collected():
	var sprite = $CanvasLayer/Panel/TextureRect/Sprite1
	
	sprite_num += 1
	
	
	if sprite_num == 1:
		sprite = $CanvasLayer/Panel/TextureRect/Sprite1
		key1 = true
	elif sprite_num == 2:
		sprite = $CanvasLayer/Panel/TextureRect/Sprite2
		key2 = true
	elif sprite_num == 3:
		sprite = $CanvasLayer/Panel/TextureRect/Sprite3
		key3 = true
	else:
		sprite = $CanvasLayer/Panel/TextureRect/Sprite1
		key1 = true
		
	
	sprite.texture = key

	if (sprite_num == 3) and (key1 == true) and (key2 == true) and (key3 == true):
		emit_signal("keys_fulfilled")

func _on_Keys1_key_collected():
	key_collected()
func _on_Keys1_key_collected_onL2():
	key_collected()
func _on_Keys1_key_collected_onL3():
	key_collected()
func _on_Keys1_key_collected_onL4():
	key_collected()
func _on_Keys_key_collected_onL5():
	key_collected()
func _on_Keys_key_collected_onL6():
	key_collected()

func _on_Keys_key_collected_onL7():
	key_collected()

func _on_Keys_key_collected_onL8():
	key_collected()
	
func _on_chest_keys_used():
	pass

func _on_chest_keys_used_onL2():
	pass

func _on_chest_keys_used_onL3():
	pass



func _on_Button_pressed():
	get_tree().change_scene("res://Play.tscn")


func _on_SettingButton_pressed():
	
	emit_signal("settingButton_pressed")
