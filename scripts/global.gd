extends Node

onready var dim1 =  preload("res://scenes/dim1.tscn")
var final = false
var inventory = []

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _process(delta):
	if inventory.size() == 38 and !final:
		get_tree().change_scene_to(dim1)
		final = true
