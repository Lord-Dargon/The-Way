extends Node

var Player_Selected: Node
var Enemy_Selected: Node

@onready var Actions : Array = []



# Called when the node enters the scene tree for the first time.
func _ready():
	var Action = Callable(self, "Attack1")

func Attack1():
	print("1 This definatly worked")
	if Enemy_Selected:
		Enemy_Selected.HP -= 50
		
		if Enemy_Selected.HP <= 0:
			Enemy_Selected = null

func Attack2():
	print("2 This definatly worked")
	if Enemy_Selected:
		Enemy_Selected.HP -= 50

func Attack3():
	print("3 This definatly worked")
	if Enemy_Selected:
		Enemy_Selected.HP -= 50
