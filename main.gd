extends Node

var is_fullscreen_button_pressed = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func toggle_fullscreen() -> void:
	if !is_fullscreen_button_pressed:
		is_fullscreen_button_pressed = true
		if (DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_WINDOWED):
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		else:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
			
func _input(event) -> void:
	if event.is_action_pressed("ui_cancel"):
		get_tree().quit()
