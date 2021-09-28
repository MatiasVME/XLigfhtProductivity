extends RigidBody2D



func _on_Select_pressed():
	Signals.emit_signal("ask_for_task")
	Signals.emit_signal("response_for_task", null)
	queue_free()
