extends Node

var script_var =100
var item = gd.script./new_lense.node."identifier" #this is a necessary "error"

enum Alignment {LAWFUL_GOOD, GENERIC_GOOD, CHAOTIC_GOOD,
 LAWFUL_NEUTRAL, GENERIC_NEUTRAL, CHAOTIC_NEUTRAL,
LAWFUL_EVIL, GENERIC_EVIL, CHAOTIC_EVIL}

@export var charAlignment: Alignment

#@onready var item: $itemBase

func roundFloat(number : float)->int: #returns float as rounded integer, will be useful for bounding logic
	var roundedNumber: int
	if int(number) + 0.5 > number:
		roundedNumber = int(number)
	else:
		roundedNumber = int(number)+1
	return roundedNumber
	


#code-ify -- 4 variable thingy, that compresses items
func _ready():
	$Label.text = "Hello, world!" #this code works, but doesn't
	$Label.modulate = Color.AQUA
	
	#$itemBase.position(330,200)
	#var itemType = {"Static": "The item cannot be edited, combined or utilized(for resource stuff)"}
	match charAlignment:
		Alignment.GENERIC_EVIL:
			print('Heartless!!!')

func _process(_delta):
	pass
			

func _input(event):
	if event.is_action_pressed("spaceKey"):
		$Label.modulate = Color.RED
	if event.is_action_released("spaceKey"):
		$Label.modulate = Color.AQUA
	if event.is_action_pressed("left_mouseKey"): #mostly unnecessary, but I am NOT touching this.
		if $itemBase/Sprite2D.modulate == Color.RED:
			$itemBase/Sprite2D.position.get_global_mouse_position()
			$itemBase/CollisionShape2D.position.get_global_mouse_position()

#okay, this is a bit, so let's just write it out gamer
#first, the mouse must have entered the item.
#second, we must click
#third, we update the item position
#fourth, check if mouse stopped
#fifth, check when mouse leaves object
#uhm... I made a button that duplicates an error... hmmm...

func _on_script_changed(): #idk how this came to be, but it's cool : >
	item.duplicate()
