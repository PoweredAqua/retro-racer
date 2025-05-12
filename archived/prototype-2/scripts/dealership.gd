extends Control

@onready var car_list = $ScrollContainer/CarList
@onready var dealership_entry_scene = preload("res://ui/DealershipEntry.tscn")

var master_list: Array = []

func add_entry(car:Dictionary):
	var entry = dealership_entry_scene.instantiate()
	var buy_button = entry.get_node("BuyButton")
	entry.get_node("NameLabel").text = car.name
	entry.get_node("YearLabel").text = str(car.year)
	buy_button.text = "Buy (%d Cr.)" % car.price
	buy_button.pressed.connect(func():
		if not GarageData.subtract_credits(car.price):
			print("Insufficient Credits")
			return
		GarageData.add_car(car)
		update_credits_label()
		print("Bought " + car.name)
		)
	car_list.add_child(entry)

func _ready():
	master_list = GarageData.load_car_data_from_csv("res://data/prototype2_cars.csv")
	for car in master_list:
		add_entry(car)
	update_credits_label()

func update_credits_label():
	$CreditsLabel.text = "Credits: " + str(GarageData.credits)

func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://MainMenu.tscn")
