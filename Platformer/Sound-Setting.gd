extends Sprite

signal ExitButton_pressed





func _on_ExitButton_pressed():
	emit_signal("ExitButton_pressed")
