extends Control


func _on_ButtonPlay_pressed():
	get_tree().change_scene("res://Play.tscn")



func _on_ButtonHelp_pressed():
	get_tree().change_scene("res://HowToPlay.tscn")



func _on_ButtonEXit_pressed():
	get_tree().quit()
