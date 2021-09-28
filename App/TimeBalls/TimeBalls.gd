extends RigidBody2D

export (String) var time : String


func _ready():
	$Text.text = time


func _on_Select_pressed():
	Signals.emit_signal("response_for_time", TaskManager.create_new_task(
		"temporal",
		int(time.trim_prefix("m"))
	))
	
	queue_free()
