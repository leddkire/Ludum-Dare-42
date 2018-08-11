extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

onready var isSelected = false

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	set_process(true)

func _process(delta):
	if(isSelected):
		position = get_global_mouse_position()

func isSelected(flag):
	isSelected = flag