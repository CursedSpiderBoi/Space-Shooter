extends Node2D

@onready var visible_on_screen_notifier_2d = $VisibleOnScreenNotifier2D
@onready var scale_component = $ScaleComponent
@onready var flash_component = $FlashComponent

# Called when the node enters the scene tree for the first time.
func _ready():
	scale_component.tween_scale()
	flash_component.flash() 
	visible_on_screen_notifier_2d.screen_exited.connect(queue_free) # deltes the laser when they are out of screen so godot dont keep track of out of bound lasers
