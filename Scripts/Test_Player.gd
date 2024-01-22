extends Node

#Stats
@export var HP: int = 100
@export var Def: int = 100
@export var Atk: int = 100
@export var Spd: int = 100
@export var Update: bool

@onready var character_button = $Character_Button
@onready var button = $Character_Button/Menu/Panel/Button
@onready var menu = $Character_Button/Menu/Panel
@onready var Action_bar = $Timer




# Called when the node enters the scene tree for the first time.
func _ready():
	Action_bar.set_wait_time(100/Spd)
	Action_bar.start()
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Update == true:
		print(Action_bar.time_left)
	pass



func _on_attack_1_pressed():
	if Action_bar.is_stopped():
		print("Attack_1")
		Action_bar.start()
		pass #

func _on_attack_2_pressed():
	if Action_bar.is_stopped():
		print("Attack_2")
		Action_bar.start()
	pass
	
func _on_attack_3_pressed():
	if Action_bar.is_stopped():
		print("Attack_3")
		Action_bar.start()
		pass # Replace with function body.



func _on_character_button_toggled(toggled_on):
	menu.show()
	
	if toggled_on == false:
		menu.hide()
