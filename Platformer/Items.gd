extends Node2D


func _init():
	pass

func _ready():
	# Get all the tilemaps in the scene.
	var tilemaps = get_tree().get_nodes_in_group("mud")

	# For each tilemap, create a new Area2D node and add it to the tilemap.
	for tilemap in tilemaps:
		
		var area = RectangleShape2D
		area.size = tilemap.size

		tilemap.add_child(area)

		# Set the area's collision shape.
		area.shape.size = tilemap.size 

		# Set the area's collision layer and mask.
		area.collision_layer = 10
		area.collision_mask = 1
