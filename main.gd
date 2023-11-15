extends Node2D

@onready var button = $CanvasLayer/Button
@onready var canvas_layer_3 = $CanvasLayer3
@onready var animation_player = $CanvasLayer/Button/AnimationPlayer


func _process(delta):
	if Energy.sap==0:
		animation_player.play("button")


func _on_button_pressed():
	canvas_layer_3.layer=-3
	animation_player.stop()
