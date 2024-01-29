extends Node

var Player_Selected: Node
var Enemy_Selected: Node

@onready var Actions : Array = []
var callable

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


#List of all attacks

func Strike():
	print("1 This definatly worked")
	if Enemy_Selected:
		Enemy_Selected.HP -= 50
		
		if Enemy_Selected.HP <= 0:
			Enemy_Selected = null

func Knee_Punch():
	print("2 This definatly worked")
	if Enemy_Selected:
		if  Enemy_Selected.Spd > 1:
			Enemy_Selected.Spd -= 10
			if  Enemy_Selected.Spd < 1:
				Enemy_Selected.Spd = 1

func Attack3():
	pass
