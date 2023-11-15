extends Node2D
@onready var sprite_2d = $Area2D/Sprite2D


func _ready():
	sprite_2d.hide()


func _on_area_2d_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("click"):
		if sprite_2d.visible==false:
			Energy.sap-=1
		sprite_2d.show()
		
		
		
		
