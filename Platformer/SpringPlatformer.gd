extends KinematicBody2D


export var platformer = "main_platformer"

var animation1 = false
var animation2 = false


var main_platformer = load("res://Assets/1 Tiles/Tile_02.png")
var floating_platformer1 = load("res://Assets/1 Tiles/Tile_07.png")
var floating_platformer2 = load("res://Assets/1 Tiles/Tile_08.png")
var floating_platformer3 = load("res://Assets/1 Tiles/Tile_09.png")
var floating_platformer4 = load("res://Assets/1 Tiles/Tile_39.png")

signal player_entered


func _physics_process(delta):
	
	
	#if animation1 == true:
		#$AnimationPlayer.play("earthQuake_animation")
	#if animation2 == true:
		#$AnimationPlayer.play("earthQuake_animation2")
	
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
	else:
		$Sprite.texture = main_platformer
		
	

func _on_Area2D_body_entered(body):
	$AudioStreamPlayer.play()
	emit_signal("player_entered")
