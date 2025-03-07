extends KinematicBody2D


var velocity = Vector2()

var speed = 50

var UP = true
var LEFT = false
var start = false


export var x = false

func _physics_process(delta):
	
	if start == true:
		if x == false:
			if UP == true:
				velocity.y = - speed
			if UP == false:
				velocity.y =  speed
		if x == true:
			
			if LEFT == true:
				velocity.x = -speed
			if LEFT == false:
				velocity.x = speed
			
	velocity = move_and_slide(velocity , Vector2.UP)

func _on_Area2D1_body_entered(body):
	
	UP = false

func _on_Area2D2_body_entered(body):
	
	UP = true


func _on_Area2D3_body_entered(body):
	
	start = true


func _on_Area2Dx1_body_entered(body):
	
	LEFT = false


func _on_Area2Dx2_body_entered(body):
	
	LEFT = true


func _on_Area2Dx1_body_entered_onL8(body):
	
	LEFT = false


func _on_Area2Dx2_body_entered_onL8(body):
	
	LEFT = true
