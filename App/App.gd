extends Node2D

var circle_timer_rec = preload("res://App/CircleTimer/CircleTime.tscn")
var ask_for_task_rec = preload("res://App/Panels/AskForTask.tscn")
var how_many_time_rec = preload("res://App/Panels/HowManyTime.tscn")

var temp_ask_for_task
var temp_how_many_time

func _ready():
	randomize()
	
	Signals.connect("response_for_task", self, "_on_response_for_task")


func _on_NewTask_pressed():
	var circle_timer = circle_timer_rec.instance()
	circle_timer.global_position = Vector2(rand_range(128, 384), 384)
	add_child(circle_timer)
	
	temp_ask_for_task = ask_for_task_rec.instance()
	add_child(temp_ask_for_task)


func _on_response_for_task(task):
	temp_ask_for_task.queue_free()
	
	temp_how_many_time = how_many_time_rec.instance()
	add_child(temp_how_many_time)


