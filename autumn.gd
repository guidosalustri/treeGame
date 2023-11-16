extends Node2D

@onready var canvas_layer_2 = $CanvasLayer2
@onready var canvas_layer = $CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready():
	Energy.season=2
	Energy.sap=10

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Energy.season==3:
		canvas_layer.layer=-3
			
			

		
