extends KinematicBody2D

var keys = 0
signal key_collected




func _on_Area2D_body_entered(body):
	
	$Area2D.set_collision_mask_bit(0,false)
	visible = false
	$AudioStreamPlayer.play()
	keys += 1
	emit_signal("key_collected")
	

func _physics_process(delta):
	 
	pass


func _on_AudioStreamPlayer_finished():
	queue_free()
