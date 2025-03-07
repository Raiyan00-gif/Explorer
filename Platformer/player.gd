extends KinematicBody2D


export var SPEED     = 160
export var JUMPFORCE = -1000
const GRAVITY   = 35
export var x_change = 100
export var enemy_hit = 800
export var fireball_speed = 30 
var speedPlatformer_speed = 500
var climbing_speed = 200
var ladder = false
var walking = true
var level10 = false
var velocity = Vector2()
var speedPlatformer_entered = false
#Dust Mud

var DustMud = false

func _ready():
	ladder = false
func _physics_process(delta):
	
	
	
	#Dust 
	

	
	
	#speedPlatformer_
	if speedPlatformer_entered == true:
		walking = false
		velocity.x = speedPlatformer_speed
	else:
		walking = true
	#Movement
	if Input.is_action_pressed("right") and Input.is_action_pressed("left"):
		velocity.x = 0
	elif Input.is_action_pressed("right") and walking == true:
		velocity.x = SPEED 
		$Sprite.play("walk")
		$Sprite.flip_h = false
		
		
	elif Input.is_action_pressed("left"):
		velocity.x = -SPEED 
		$Sprite.play("walk")
		$Sprite.flip_h = true
	elif Input.is_action_just_pressed("up") and level10 == true:
		velocity.y = -climbing_speed
		$Sprite.play("climb")
		ladder = true
	else:
		$AnimationPlayer.play("New Anim")
		ladder = false
		$Sprite.play("idle")
		
	if not is_on_floor():
		$Sprite.play("air")
		
	
	
		
	# Gravity Making 
	velocity.y += GRAVITY
	
	if Input.is_action_just_pressed("jump") and is_on_floor() and ladder == false:
		velocity.y = JUMPFORCE
		$JumpingSound.play()
		
	velocity = move_and_slide(velocity , Vector2.UP)
	
	velocity.x = lerp(velocity.x , 0 , 0.2)


func _on_Endline_body_entered_onL1(body):
	get_tree().change_scene("res://Level1.tscn")


func _on_Endline_body_entered_onL2(body):
	get_tree().change_scene("res://Level2.tscn")


func _on_Endline_body_entered_onL3(body):
	get_tree().change_scene("res://Level3.tscn")


func _on_EndLine_body_entered_onL4(body):
	get_tree().change_scene("res://Level4.tscn")

func _on_Endline_body_entered_onL5(body):
	get_tree().change_scene("res://Level5.tscn")

func _on_Endline_body_entered_onL6(body):
	get_tree().change_scene("res://Level6.tscn")


func _on_Endline_body_entered_onL7(body):
	get_tree().change_scene("res://Level7.tscn")

func _on_EndLine_body_entered_onL8(body):
	get_tree().change_scene("res://Level8.tscn")



func _on_SpringPlatformer_player_entered_onL4():
	
	velocity.y = JUMPFORCE + 200
	velocity.x = x_change

func _on_SpringPlatformer_player_entered_onL5():
	
	velocity.y = JUMPFORCE + 200
	velocity.x = x_change
	
func _on_SpringPlatformer_player_entered_onL6():
	
	velocity.y = -1000 + 200
	velocity.x = x_change
	
func _on_SpringPlatformer_player_entered_onL7():
	
	velocity.y = -1000 + 300
	velocity.x = x_change +300
	
func _on_SpringPlatformer_player_entered_onL8():
	
	velocity.y = -1100 + 200
	velocity.x = x_change+100


func _on_speedPlatformer_entered_onL8():
	
	level10 = true
	speedPlatformer_entered = true
	
	
func _on_speedPlatformer_exited_onL8():
	
	speedPlatformer_entered = false

func _on_Enemy_player_detected1_onL6():
	
	velocity.x = -enemy_hit

func _on_Enemy_player_detected1_onL8():
	
	velocity.x = -enemy_hit


func _on_Enemy_player_detected2_onL6():
	
	velocity.x = enemy_hit

func _on_Enemy_player_detected2_onL8():
	
	velocity.x = enemy_hit




func _on_chest_reward():
	$Camera2D.current = false
	visible = false


func _on_chest_reward_onL2():
	$Camera2D.current = false
	visible = false
	
func _on_chest_reward_onL3():
	$Camera2D.current = false
	visible = false


func _on_chest_reward_onL4():
	$Camera2D.current = false
	visible = false

func _on_chest_reward_onL5():
	$Camera2D.current = false
	visible = false

func _on_chest_reward_onL6():
	$Camera2D.current = false
	visible = false

func _on_chest_reward_onL7():
	$Camera2D.current = false
	visible = false

func _on_chest_reward_onL8():
	$Camera2D.current = false
	visible = false


func _on_Area2D2_body_entered(body):
	level10 = true

func get_x():
	return $Camera2D.position.x







func _on_Area2D_DustMud_entered(body):
	
	if body.get_collision_layer_bit(9):
		DustMud = true



func _on_Area2D_DustMud_exited(body):
	
	if body.get_collision_layer_bit(9):
		DustMud = false
