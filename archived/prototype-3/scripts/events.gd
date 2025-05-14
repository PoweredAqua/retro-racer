extends Control


func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://MainMenu.tscn")

func _ready():
	for event_data in EventsData.events:
		var entry = preload("res://scenes/EventsEntry.tscn").instantiate()
		
		entry.setup(event_data)
		
		$EventList.add_child(entry)
