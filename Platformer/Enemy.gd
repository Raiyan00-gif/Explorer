extends KinematicBody2D


var velocity = Vector2()
export var direction = -1
export var detects_cliffs = true
export var speed = 30
signal player_detected1
signal player_detected2

func _ready():
	if direction == 1:
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play("walking")
	$floor_checker.position.x = $CollisionShape2D.shape.get_extents().x * direction
	$floor_checker.enabled = detects_cliffs

func _physics_process(delta):
	
	if (is_on_wall()) or (not $floor_checker.is_colliding() and detects_cliffs and  is_on_floor()):
		direction = direction * -1
		$AnimatedSprite.flip_h = not $AnimatedSprite.flip_h
		$floor_checker.position.x = $CollisionShape2D.shape.get_extents().x * direction
		
	velocity.y += 20
	
	velocity.x = speed * direction
	
	velocity = move_and_slide(velocity , Vector2.UP)
	
	if velocity.y > 650:
		queue_free()

func _on_top_checker_body_entered(body):
	$AnimatedSprite.play("Esquashed")
	speed = 0
	set_collision_layer_bit(4 , false)
	set_collision_mask_bit( 0 , false)
	$top_checker.set_collision_layer_bit(4 , false)
	$top_checker.set_collision_mask_bit( 0 , false)
	$sides_checker.set_collision_layer_bit(4 , false)
	$sides_checker.set_collision_mask_bit( 0 , false)
	$sides_checker2.set_collision_layer_bit(4 , false)
	$sides_checker2.set_collision_mask_bit( 0 , false)
	# timer
	$Timer.start()
	


func _on_Timer_timeout():
	queue_free()


func _on_sides_checker_body_entered(body):
	$sides_checker.set_collision_layer_bit(4 , false)
	$sides_checker.set_collision_mask_bit( 0 , false)
	$sides_checker2.set_collision_layer_bit(4 , false)
	$sides_checker2.set_collision_mask_bit( 0 , false)
	emit_signal("player_detected1")

func _on_sides_checker2_body_entered(body):
	$sides_checker.set_collision_layer_bit(4 , false)
	$sides_checker.set_collision_mask_bit( 0 , false)
	$sides_checker2.set_collision_layer_bit(4 , false)
	$sides_checker2.set_collision_mask_bit( 0 , false)
	emit_signal("player_detected2")
