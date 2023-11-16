extends Node2D
@onready var sprite_2d = $Area2D/Sprite2D
@onready var timer = $Timer
@onready var timer_2 = $Timer2
@onready var sprite_2d_2 = $Area2D/Sprite2D2
@onready var sprite_2d_3 = $Area2D/Sprite2D3
@onready var animation_player = $Area2D/Sprite2D2/AnimationPlayer

var rng = RandomNumberGenerator.new()
var flag=true

func _ready():
	sprite_2d.hide()
	sprite_2d_3.hide()
	animation_player.play("shadow")
	randomize()

func _process(delta):
	if Energy.sap<=0:
		animation_player.stop()
	if Energy.season==2 && flag:
		randomize()
		sprite_2d_3.show()
		sprite_2d_2.hide()
		var yellow_leaves_t = rng.randf_range(0, 3)
		sprite_2d.show()
		timer.wait_time=yellow_leaves_t
		timer.start()
		flag=false
	if Energy.shadow_leaf_off:
		sprite_2d_2.hide()

func _on_area_2d_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("click"):
		if sprite_2d.visible==false:
			Energy.sap-=1
		sprite_2d.show()
		

func _on_timer_timeout():
	sprite_2d.hide()
	#sprite_2d_3.show()
	randomize()
	var leaves_fall_t= rng.randf_range(0, 4)
	timer_2.wait_time=leaves_fall_t
	timer_2.start()
	

func _on_timer_2_timeout():
	sprite_2d_3.hide()
