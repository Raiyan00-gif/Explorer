extends TileMap


func _ready():
	visible = false
	set_collision_layer_bit(1 , false)
	set_collision_mask_bit( 0 , false)


func _on_Area2D_body_entered_onL8(body):
	visible = true
	set_collision_layer_bit(1 , true)
	set_collision_mask_bit( 0 , true)
