extends RigidBody2D

export (String) var time : String


func _ready():
	$Text.text = time
