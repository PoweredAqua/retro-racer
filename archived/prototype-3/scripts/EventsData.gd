extends Node

var events = []

func _ready():
	events = load_event_data_from_csv("res://data/events.csv")

func load_event_data_from_csv(path: String) -> Array:
	# CSV Loader
	var file = FileAccess.open(path, FileAccess.READ)
	if file == null:
		print("Failed to open Event CSV file: ", path)
		return []
	
	var lines = []
	var headers = []
	
	while not file.eof_reached():
		var line = file.get_line()
		if headers.size() == 0:
			headers = line.split(",")
		else:
			var data = line.split(",")
			var event = {}
			for i in range(headers.size()):
				event[headers[i]] = data[i]
			lines.append(event)
	return lines
