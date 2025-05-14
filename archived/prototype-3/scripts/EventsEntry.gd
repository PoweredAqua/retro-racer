extends GridContainer

func setup(data: Dictionary) -> void:
	$NameLabel.text = data.get("name", "Unnamed Event")
	$RewardLabel.text = data.get("reward", "0") + " Cr"
	$DescriptionLabel.text = data.get("description", "")
	# Default entries for debug, if this pops up, something went wrong.
	
	
