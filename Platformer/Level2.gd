extends Node2D

var level_completed = false


func _on_HSlider_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master") , value)



func _on_SoundSetting_ExitButton_pressed():
	$player/Camera2D.current = true
	$Camera2D.current = false
	$Camera2D/SoundSetting.visible = false



func _on_chest_reward_l2():
	level_completed = true


func _on_Pause_paused():
	$player/Camera2D.current = false
	$Camera2D.current = true
	#
	if $player.position.x < 100 :
		$Camera2D.position.x =  $player.position.x
		$Camera2D/SoundSetting.position.x = 250
		
	else:
		$Camera2D.position.x =  $player.position.x
		$Camera2D/SoundSetting.position.x = -150
			
	$Camera2D/SoundSetting.visible = true
	$Camera2D/SoundSetting/HSlider.editable = true


func _on_keys_hud_settingButton_pressed():
	$Camera2D/SoundSetting.visible = true
