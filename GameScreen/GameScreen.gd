extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var isHoldingTile = false
var currentlySelectedTile = null

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_BaseTileSelect_tileSelected(selectedTile):
	if(isHoldingTile):
		remove_child(currentlySelectedTile)
		currentlySelectedTile.queue_free()
		isHoldingTile = false
	selectedTile.position = get_global_mouse_position()
	add_child(selectedTile)
	selectedTile.isSelected(true)
	currentlySelectedTile = selectedTile
	isHoldingTile = true
