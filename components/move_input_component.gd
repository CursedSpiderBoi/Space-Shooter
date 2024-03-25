class_name MoveInputComponent
extends Node

@export var move_component: MoveComponent

func _input(event):
	var input_axis = Input.get_axis("ui_left","ui_right") # returns a value between -1,1 depending upon pressed button
	move_component.velocity=Vector2(input_axis*50,0)  
