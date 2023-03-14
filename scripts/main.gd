extends Spatial


# Declare member variables here. Examples:
# var a = 2
onready var soundtrack = $soundtrack
onready var worldenvir = $WorldEnvironment



# Called when the node enters the scene tree for the first time.
func _ready():
	pass# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_body_entered(body):
	if body.is_in_group('player'):
		body.print_text(1)

###
func pep(body):
	if body.is_in_group('player'):
		soundtrack.set_pitch_scale(0.67)
		worldenvir.get_environment().set_adjustment_brightness(0.8)
		worldenvir.get_environment().set_adjustment_contrast(5.4)


func _on_Area_red_body_entered(body):
	if body.is_in_group('player'):
		body.print_text(2)
func _on_Area_red_body_exited(body):
	if body.is_in_group('player'):
		body.erase_text(2)


func _on_Area_blue_body_entered(body):
	if body.is_in_group('player'):
		body.print_text(3)
func _on_Area_blue_body_exited(body):
	if body.is_in_group('player'):
		body.erase_text(3)
