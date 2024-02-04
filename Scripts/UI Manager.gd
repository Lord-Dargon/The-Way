extends Node

@onready var Crosshair1 = $"../Enemy_Slot_1/Crosshair"
@onready var Crosshair2 = $"../Enemy_Slot_2/Crosshair"
@onready var Crosshair3 = $"../Enemy_Slot_3/Crosshair"
@onready var Crosshair4 = $"../Enemy_Slot_4/Crosshair"
@onready var Crosshairs : Array = [Crosshair1, Crosshair2, Crosshair3, Crosshair4]
@onready var CrosshairTimer = $Timer
@onready var container = $Container
@onready var battle_log = $"Container/Battle Log"
var messege: String

func _ready():
	
	battle_log.text= "Battle start"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func Battle_Log_Update(messege):
	#if battle_log.get_visible_line_count() < 4:
	battle_log.text = battle_log.text + "\n" + messege
	container.scroll_vertical += 200

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
