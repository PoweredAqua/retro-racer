extends Control

@onready var car_list = $ScrollContainer/CarList
@onready var car_entry_scene = preload("res://ui/CarEntry.tscn")

func _ready():
	for car in GarageData.get_all_cars():
		var entry = car_entry_scene.instantiate()
		entry.get_node("NameLabel").text = car.name
		entry.get_node("YearLabel").text = str(car.year)
		car_list.add_child(entry)

func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://MainMenu.tscn")
