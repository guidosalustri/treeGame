extends Node2D

@onready var button = $CanvasLayer/Button
@onready var canvas_layer_3 = $spring
@onready var animation_player = $CanvasLayer/Button/AnimationPlayer
@onready var sap = $CanvasLayer/sap
@onready var timer = $Timer

var button_not_pressed= true

func _process(delta):
	if Energy.sap==0 && button_not_pressed:
		animation_player.play("button")


func _on_button_pressed():
	canvas_layer_3.layer=-3
	button_not_pressed=false
	animation_player.stop()
	Energy.shadow_leaf_off=true
	timer.start()

func _on_timer_timeout():
	Energy.sap+=2
	if Energy.sap<10:
		timer.start()
