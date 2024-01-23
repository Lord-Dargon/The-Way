extends Node

@onready var Crosshair1 = $"../Enemy_Slot_1/Enemy/Crosshair"
@onready var Crosshair2 = $"../Enemy_Slot_2/Enemy/Crosshair"
@onready var Crosshair3 = $"../Enemy_Slot_3/Enemy/Crosshair"
@onready var Crosshair4 = $"../Enemy_Slot_4/Enemy/Crosshair"
@onready var Crosshairs : Array = [Crosshair1, Crosshair2, Crosshair3, Crosshair4]
@onready var CrosshairTimer = $Timer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_character_crosshair_flash():
	Crosshair1.show()
	Crosshair2.show()
	Crosshair3.show()
	Crosshair4.show()
	CrosshairTimer.start()


func _on_timer_timeout():
	Crosshair1.hide()
	Crosshair2.hide()
	Crosshair3.hide()
	Crosshair4.hide()
