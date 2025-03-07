extends Node2D

var paused = true


func _on_HSlider_value_changed(value):
	
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master") , value)
	

	
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
			
	$Camera2D/SoundSetting.visible = paused
	$Camera2D/SoundSetting/HSlider.editable = paused
	


func _on_SoundSetting_ExitButton_pressed():
	$Camera2D/SoundSetting.visible = false
