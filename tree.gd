extends Node2D

@onready var sprite_2d = $Sprite2D
@onready var autumn_tree = $autumnTree
@onready var timer = $Timer
@onready var winter_tree = $winterTree

var flag=true
# Called when the node enters the scene tree for the first time.
func _ready():
	autumn_tree.hide()
	winter_tree.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Energy.season==2 && flag:
		sprite_2d.hide()
		autumn_tree.show()
		timer.wait_time=8
		timer.start()
		flag=false
	if Energy.season==3:
		autumn_tree.hide()
		winter_tree.show()


func _on_timer_timeout():
	print("hola")
	Energy.season=3
