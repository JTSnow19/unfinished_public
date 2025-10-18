extends Node2D

var mouseSignal : bool
var mousePosition : Vector2= Vector2.ZERO
var mouseDif : Vector2

func _ready():
	pass

func _on_area_2d_mouse_entered():
	mouseSignal = true
	

func _on_area_2d_mouse_exited()->void:
	mouseSignal = false

func _process(delta: float)->void:
	mouseDif = mousePosition - get_global_mouse_position()
	
	if Input.is_action_just_pressed("left_mouseKey") and mouseSignal and mouseDif != Vector2.ZERO:
		global_position -= mouseDif
	if Input.is_action_pressed("left_mouseKey") and mouseSignal and mouseDif != Vector2.ZERO:
		global_position -= mouseDif
		
	mousePosition = get_global_mouse_position()
