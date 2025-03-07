extends KinematicBody2D

var save_path = "user://Lavel.data"

var keys_fulfilled = no
signal keys_used
signal reward
var data = [0 ,0 , 0, 0, 0, 0, 0]
var yes = true
var no = false
var Level2 =no
var Level3 = no
var Level4 = no
var Level5 = no
var Level6 = no
var Level7 = no
var Level8 = no
var LastMassage = no

func _on_Area2D_body_entered(_body):
	
	if keys_fulfilled == yes:
		$AnimatedSprite.playing = yes
	
func _on_AnimatedSprite_animation_finished():
	
	emit_signal("reward")
	$AnimatedSprite.playing = no
	emit_signal("keys_used")




func _on_keys_hud_keys_fulfilled():
	
	keys_fulfilled = yes

func _on_keys_hud_keys_fulfilled_onL2():
	
	keys_fulfilled = yes

func _on_keys_hud_keys_fulfilled_onL3():
	
	keys_fulfilled = yes


func _on_keys_hud_keys_fulfilled_onL4():
	
	keys_fulfilled = yes

func _on_keys_hud_keys_fulfilled_onL5():
	
	keys_fulfilled = yes

func _on_keys_hud_keys_fulfilled_onL6():
	
	keys_fulfilled = yes


func _on_keys_hud_keys_fulfilled_onL7():
	
	keys_fulfilled = yes


func _on_keys_hud_keys_fulfilled_onL8():
	
	keys_fulfilled = yes


func _on_chest_reward():
	Level2 = yes
	visible = yes
	var file = File.new()
	var error = file.open(save_path , File.WRITE)
	if error == OK:
		data[0] = 2
		file.store_var(data)
		file.close()
		
	
	
			

func _on_chest_reward_onL2():
	
	Level3 = yes
	visible = yes
	var file = File.new()
	var error = file.open(save_path , File.WRITE)
	if error == OK:
		data[0] = 2
		data[1] = 3
		file.store_var(data)
		file.close()
	

func _on_chest_reward_onL3():
	
	Level4 = yes 
	visible = yes

	var file = File.new()
	var error = file.open(save_path , File.WRITE)
	if error == OK:
		data[0] = 2
		data[1] = 3
		data[2] = 4
		file.store_var(data)
		file.close()
	
			
func _on_chest_reward_onL4():
	
	Level5 = yes 
	visible = yes

	var file = File.new()
	var error = file.open(save_path , File.WRITE)
	if error == OK:
		data[0] = 2
		data[1] = 3
		data[2] = 4
		data[3] = 5
		file.store_var(data)
		file.close()

func _on_chest_reward_onL5():
	
	Level6 = yes
	visible = yes

	var file = File.new()
	var error = file.open(save_path , File.WRITE)
	if error == OK:
		data[0] = 2
		data[1] = 3
		data[2] = 4
		data[3] = 5
		data[4] = 6
		file.store_var(data)
		file.close()

func _on_chest_reward_onL6():
	
	Level7 = yes
	visible = yes

	var file = File.new()
	var error = file.open(save_path , File.WRITE)
	if error == OK:
		data[0] = 2
		data[1] = 3
		data[2] = 4
		data[3] = 5
		data[4] = 6
		data[5] = 7
		file.store_var(data)
		file.close()
	
func _on_chest_reward_onL7():
	
	Level8 = yes
	visible = yes
	
	var file = File.new()
	var error = file.open(save_path , File.WRITE)
	if error == OK:
		data[0] = 2
		data[1] = 3
		data[2] = 4
		data[3] = 5
		data[4] = 6
		data[5] = 7
		data[6] = 8
		file.store_var(data)
		file.close()

	
func _on_chest_reward_onL8():
	
	LastMassage = yes
	visible = yes
	
	
