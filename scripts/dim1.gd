extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$player/Camera.fov = 120
	$player.sensitivity = 0.1
	$player.speed = 1
	$player/walk_sound.set_volume_db(-80)
	$Timer.start(5000)


func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()


func _on_Timer_timeout():
	get_tree().quit()
