extends KinematicBody2D

export var SPEED = 20

var velocity = Vector2()

export var platformer = "main_platformer"

signal speedPlatformer_exited
signal speedPlatformer_entered


var main_platformer = load("res://Assets/1 Tiles/Tile_02.png")
var floating_platformer1 = load("res://Assets/1 Tiles/Tile_07.png")
var floating_platformer2 = load("res://Assets/1 Tiles/Tile_08.png")
var floating_platformer3 = load("res://Assets/1 Tiles/Tile_09.png")
var floating_platformer4 = load("res://Assets/1 Tiles/Tile_39.png")
var water_platformer1 = load("res://Assets/1 Tiles/Tile_10.png")
var water_platformer2 = load("res://Assets/1 Tiles/Tile_30.png")
var water_platformer3 = load("res://Assets/1 Tiles/Tile_50.png")
var water_platformer4 = load("res://Assets/1 Tiles/Tile_60.png")

func _physics_process(delta):
	
	
	
	
	if platformer == "main_platformer":
		$Sprite.texture = main_platformer
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
	


func _on_Area2D_body_exited(body):
	emit_signal("speedPlatformer_exited")


func _on_Area2D_body_entered(body):
	emit_signal("speedPlatformer_entered")
