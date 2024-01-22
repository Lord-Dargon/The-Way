extends Node

#Stats
@export var Name: String
@export var HP: int = 100
@export var Def: int = 100
@export var Atk: int = 100
@export var Spd: int = 100
@onready var Action_bar = $Timer






# Called when the node enters the scene tree for the first time.
func _ready():
	Action_bar.set_wait_time(200/Spd)
	Action_bar.start()
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if HP == 0:
		queue_free()
	
	pass

func _on_timer_timeout():
	print(Name + " ATTACKS")
	Action_bar.start()
	pass # Replace with function body.
