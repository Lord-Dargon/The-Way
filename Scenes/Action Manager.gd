extends Node

@onready var Actions : Array = []



# Called when the node enters the scene tree for the first time.
func _ready():
	var Action = Callable(self, "Attack1")

func Attack1():

		pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
