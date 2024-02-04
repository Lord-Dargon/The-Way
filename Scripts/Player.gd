extends Node

#Stats
@export var Name: String
@export var HP: int = 100
@export var Def: int = 100
@export var Atk: int = 100
@export var Spd: int = 100
@export var Update: bool

@onready var character_button = $Character_Button
@onready var button = $Character_Button/Menu/Panel/Button
@onready var menu = $Character_Button/Menu/Panel
@onready var Action_bar = $Timer
@onready var TimerBar = $TimerBar

@export_category("Attacks")
@export var Attack1_Name = ""
@export var Attack2_Name = ""
@export var Attack3_Name = ""

signal CrosshairFlash 




# Called when the node enters the scene tree for the first time.
func _ready():
	Action_bar.set_wait_time(100/Spd)
	TimerBar.max_value = Action_bar.wait_time
	Action_bar.start()
	
	
	
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Update == true:
		UiManager.Battle_Log_Update(Action_bar.time_left)
	TimerBar.value = Action_bar.wait_time - Action_bar.time_left
	pass



func _on_attack_1_pressed():
	
	if Action_bar.is_stopped():
		if ActionManager.Enemy_Selected:
			ActionManager.call(Attack1_Name)
			UiManager.Battle_Log_Update( Name + " " + "Punched")
			Action_bar.start()
		else:
			UiManager.Battle_Log_Update("Pick An Enemy")
			CrosshairFlash.emit()

func _on_attack_2_pressed():
	if Action_bar.is_stopped():
		if ActionManager.Enemy_Selected:
			UiManager.Battle_Log_Update("Attack_2")
			ActionManager.call(Attack2_Name)
			Action_bar.start()
		else:
			UiManager.Battle_Log_Update("Pick An Enemy")
			CrosshairFlash.emit()

func _on_attack_3_pressed():
	if Action_bar.is_stopped():
		if ActionManager.Enemy_Selected:
			UiManager.Battle_Log_Update("Attack_3")
			ActionManager.call(Attack3_Name)
			Action_bar.start()
		else:
			UiManager.Battle_Log_Update("Pick An Enemy")
			CrosshairFlash.emit()



func _on_character_button_toggled(toggled_on):
	menu.show()
	
	if toggled_on == false:
		menu.hide()
