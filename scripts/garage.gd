extends Control

# Temp: hardcoded list for prototype 1
var player_cars = [
	{"name": "Mazda RX-7 FD", "power": "206 kW", "rarity": "Rare"},
	{"name": "Nissan R33 GTS-25t", "power": "184 kW", "rarity": "Uncommon"},
	{"name": "McLaren F1", "power": "461 kW", "rarity": "Legendary"}
]

@onready var car_list = $VBoxContainer/CarList
@onready var info_label = $VBoxContainer/Panel/InfoLabel

func _ready():
	print("Garage ready. Populating cars...")
	for car in player_cars:
		print("Adding car:", car["name"])
		car_list.add_item(car["name"])

func _on_CarList_item_selected(index):
	var car = player_cars[index]
	info_label.text = "Power: %s\nRarity: %s" % [car["power"], car["rarity"]]

func _on_BackButton_pressed():
	get_tree().change_scene_to_file("res://main.tscn")
