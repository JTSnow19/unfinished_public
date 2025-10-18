extends Node2D

class_name itemFull

var itemState : string ##this will contain a range of 8 different item_states

var itemProperty : bool #NO, 42 of these!!!

var itemProperty : string(func(bool)) #42 of these

var itemUseCase : int #base range 0-12, so 13 items total

var itemName : StringName

itemDEF :: set.case.get./set./enable./all(bool.ui.init)

func __init__itemFull__():
	for item.logged in itemFull:
		item.load()
	boolType= {"Pronacate":null,"inDefed":null,"CounterDCreate":null, "Ovaschoche":null, "ruinTime": false, "Kaeberdkhan": false, "Causentak": true, "Aeberdt": null, "Kemblance": false, }
	

func itemCall():
	sprite2D.create(itemName +"/itemStuff/itemSprites")
	

#@import item_base
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
