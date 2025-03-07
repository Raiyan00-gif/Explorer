extends CanvasLayer

signal paused


var paused = true

func _input(event):
	
	pass


func _on_keys_hud_settingButton_pressed():
	
	get_tree().paused= paused
	emit_signal("paused")


func _on_SoundSetting_ExitButton_pressed():

	get_tree().paused = not paused
	
