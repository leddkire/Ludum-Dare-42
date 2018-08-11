extends TextureButton

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var baseTile_scene = preload("res://BaseTile/BaseTile.tscn")

signal tileSelected(tile)

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_BaseTileSelect_pressed():
	var baseTile_instance = baseTile_scene.instance()
	emit_signal("tileSelected",baseTile_instance)
