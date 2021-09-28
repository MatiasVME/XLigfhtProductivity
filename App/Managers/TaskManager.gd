extends Node

var tasks := []

var current_id


func create_new_task(description : String, initial_time : int):
	tasks.append(
		{
			"ID" : create_id(),
			"Description" : description,
			"InitialTime" : initial_time
		}
	)
	
func create_id():
	var id = char(int(rand_range(33, 126)))
	id = id + char(int(rand_range(161, 384)))
	id = id + char(int(rand_range(1024, 1119)))
	id = id + char(int(rand_range(33, 126)))
	
	return id
