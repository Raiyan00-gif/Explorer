extends Node2D
var NextLevel = 1

var Level = 1
export var Header = ""
export var Msg = ""
export var key = ""
var save_path2 = "user://Lavel2.data"
var LevelData = []

func _ready():
	
	pass
	
		

func _physics_process(delta):
	pass
	

	

func _on_chest_reward():
	Level = 2
	$Camera2D2.current = true
	visible = true
	$ColorRect/Header.text = "Congratulation!You Passed!"
	$ColorRect/key.text    = "You Got The Key Of Level2!"
	$ColorRect/Msg.text    = "You Did A Great JOb!"
	$ColorRect/Msg2.text   = "But Next Levels,ll Be More Harder!!!"
	

func _on_chest_reward_onL2():
	Level = 3
	$Camera2D2.current = true
	visible = true
	$ColorRect/Header.text = "Congratulation!You Passed!"
	$ColorRect/key.text    = "You Got The Key Of Level3!"
	$ColorRect/Msg.text    = "Awsome!"
	$ColorRect/Msg2.text   = "There Are Only 6 Level Left!!!"
	


func _on_chest_reward_onL3():
	Level = 4
	$Camera2D2.current = true
	visible = true
	$ColorRect/Header.text = "Congratulation!You Passed!"
	$ColorRect/key.text    = "You Got The Key Of Level3!"
	$ColorRect/Msg.text    = "How Was The New Environment!"
	$ColorRect/Msg2.text   = "Wait For More New Exciting Platformers!!!"


func _on_chest_reward_onL4():
	Level = 5
	$Camera2D2.current = true
	visible = true
	$ColorRect/Header.text = "Congratulation!You Passed!"
	$ColorRect/key.text    = "You Got The Key Of Level3!"
	$ColorRect/Msg.text    = "Is,it Getting Harder?"
	$ColorRect/Msg2.text   = "Wait For The New Environment!!!"


func _on_chest_reward_onL5():
	Level = 6
	$Camera2D2.current = true
	visible = true
	$ColorRect/Header.text = "Congratulation!You Passed!"
	$ColorRect/key.text    = "You Got The Key Of Level3!"
	$ColorRect/Msg.text    = "HowDy?"
	$ColorRect/Msg2.text   = "This Level Was Slightly Easier!!!"


func _on_chest_reward_onL6():
	Level = 7
	$Camera2D2.current = true
	visible = true
	$ColorRect/Header.text = "Congratulation!You Passed!"
	$ColorRect/key.text    = "You Got The Key Of Level3!"
	$ColorRect/Msg.text    = "This Environment Ends Here!!"
	$ColorRect/Msg2.text   = "You,ve come so Far!Just 2 Left!!!"


func _on_chest_reward_onL7():
	Level = 8
	$Camera2D2.current = true
	visible = true
	$ColorRect/Header.text = "Congratulation!You Passed!"
	$ColorRect/key.text    = "You Got The Key Of Level3!"
	$ColorRect/Msg.text    = "There Were Lot,s Of Illution Right?"
	$ColorRect/Msg2.text   = "Most Hardest Level,s Waiting For You!!!"


func _on_chest_reward_onL8():
	$NextLevel.visible = false
	$NextLevel.disabled = true
	$Camera2D2.current = true
	visible = true
	$ColorRect/Header.text = "You Did A Great JOb My Buddy!"
	$ColorRect/key.text    = "You So Patients!!!"
	$ColorRect/Msg.text    = "That,s Mean You Could Be A Great Man"
	$ColorRect/Msg2.text   = "Always Remember Your Upcoming Death!!"


func _on_NextLevel_pressed():
	
	if Level == 2:
		get_tree().change_scene("res://Level2.tscn")
	if Level == 3:
		get_tree().change_scene("res://Level3.tscn")
	if Level == 4:
		get_tree().change_scene("res://Level4.tscn")
	if Level == 5:
		get_tree().change_scene("res://Level5.tscn")
	if Level == 6:
		get_tree().change_scene("res://Level6.tscn")
	if Level == 7:
		get_tree().change_scene("res://Level7.tscn")
	if Level == 8:
		get_tree().change_scene("res://Level8.tscn")
	
