extends Control

var debug_credits = 3

func _ready():
	$VBoxContainer/StartButton.pressed.connect(_on_start_pressed)
	$VBoxContainer/QuitButton.pressed.connect(_on_quit_pressed)
	$DebugSpawnButton.pressed.connect(_on_debug_spawn_pressed)
	$DebugCreditsButton.pressed.connect(_on_debug_credits_pressed)
	$DebugCreditsButton.text = "Add %s Credits" % debug_credits

func _on_debug_spawn_pressed():
	var count = 2
	for i in range(count): # How many cars to add when pressed
		GarageData.add_car({
			"name": "Mazda RX-7",
			"year": "1993"
		})
	print("Added %s Cars!" % count)
	
func _on_start_pressed():
	print("Start pressed") # Later: load next scene

func _on_quit_pressed():
	get_tree().quit()

func _on_garage_pressed():
	get_tree().change_scene_to_file("res://scenes/Garage.tscn")

func _on_dealership_pressed():
	get_tree().change_scene_to_file("res://scenes/Dealership.tscn")

func  _on_debug_credits_pressed():
	GarageData.add_credits(debug_credits)
	print("Added %d Credits!" % debug_credits)
