extends KinematicBody2D

var save_data = "user://Sound.data"
export var SPEED = 20
signal L8Visible
var velocity = Vector2()
var sound = true

export var platformer = "main_platformer"

var animation = false


var main_platformer = load("res://Assets/1 Tiles/Tile_02.png")
var main_platformer2 = load("res://Assets/1 Tiles/Tile_42.png")
var floating_platformer1 = load("res://Assets/1 Tiles/Tile_07.png")
var floating_platformer2 = load("res://Assets/1 Tiles/Tile_08.png")
var floating_platformer3 = load("res://Assets/1 Tiles/Tile_09.png")
var floating_platformer4 = load("res://Assets/1 Tiles/Tile_39.png")
var water_platformer1 = load("res://Assets/1 Tiles/Tile_10.png")
var water_platformer2 = load("res://Assets/1 Tiles/Tile_30.png")
var water_platformer3 = load("res://Assets/1 Tiles/Tile_50.png")
var water_platformer4 = load("res://Assets/1 Tiles/Tile_60.png")

func _physics_process(delta):
	
	
	if animation == true :
		velocity.y += SPEED
		$Timer.start()
	
	if platformer == "main_platformer":
		$Sprite.texture = main_platformer
	if platformer == "main_platformer2":
		$Sprite.texture = main_platformer2
	elif platformer == "floating_platformer1":
		$Sprite.texture = floating_platformer1
	elif platformer == "floating_platformer2":
		$Sprite.texture = floating_platformer2
	elif platformer == "floating_platformer3":
		$Sprite.texture = floating_platformer3
	elif platformer == "floating_platformer4":
		$Sprite.texture = floating_platformer4
	elif platformer == "water_platformer1":
		$Sprite.texture = water_platformer1
	elif platformer == "water_platformer2":
		$Sprite.texture = water_platformer2
	elif platformer == "water_platformer3":
		$Sprite.texture = water_platformer3
	elif platformer == "water_platformer4":
		$Sprite.texture = water_platformer4
	else:
		$Sprite.texture = main_platformer
	 
	
	
	
	velocity = move_and_slide(velocity)
	

func _on_Area2D_body_entered(body):
	var file = File.new()
	
	if file.file_exists(save_data):
		var error = file.open(save_data , File.READ)
		if error == OK:
			sound = file.get_var()
			file.close()
	if sound == true:
		$AudioStreamPlayer.play()
		
	animation = true 

func _on_Timer_timeout():
	queue_free()






