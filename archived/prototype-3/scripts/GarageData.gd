extends Node

var owned_cars = []

func add_car(car: Dictionary) -> void:
	# add to the list
	owned_cars.append(car)
	print("%s added" % car.name)

func get_all_cars() -> Array:
	# return the current car list
	return owned_cars

func load_car_data_from_csv(path: String) -> Array:
	# CSV loader
	var file = FileAccess.open(path, FileAccess.READ)
	if not file:
		print("Failed to open CSV file.")
		return []
	
	var cars = []
	var is_header = true
	
	while not file.eof_reached():
		var line = file.get_line()
		if is_header:
			is_header = false
			continue # Skip the header
		
		var parts = line.split(",", false)
		if parts.size() >= 3:
			var car = {
				"name": parts[0],
				"year": int(parts[1]),
				"price": int(parts[2])
			}
			cars.append(car)
			
	file.close()
	return cars

var car_list: Array = []

var credits: int = 10 # starting amount, change as needed

func add_credits(amount: int):
	credits += amount

func subtract_credits(amount: int) -> bool:
	if credits < amount:
		return false
	credits -= amount
	return true

func _ready():
	car_list = load_car_data_from_csv("res://data/prototype2_cars.csv")
	print(car_list) # Optional: to verify
