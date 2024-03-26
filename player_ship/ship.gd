extends Node2D

@onready var marker_center = $MarkerCenter #onready var only access the components when the parent is ready
@onready var marker_left = $MarkerLeft
@onready var marker_right = $MarkerRight
@onready var spawner_component = $SpawnerComponent
@onready var fire_rate_timer = $FireRateTimer
@onready var scale_component = $ScaleComponent

func _ready():
	fire_rate_timer.timeout.connect(fire_lasers) # when using connect and within passing a func that returns nothing or void remove the inner passed functions parenthesis 
	pass # Replace with function body.


func fire_lasers():
	spawner_component.spawn(marker_center.global_position)
	spawner_component.spawn(marker_left.global_position)
	spawner_component.spawn(marker_right.global_position)
	scale_component.tween_scale()

