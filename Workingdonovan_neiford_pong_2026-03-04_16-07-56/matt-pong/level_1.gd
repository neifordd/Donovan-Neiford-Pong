extends Node2D

var computer_goal:int = 0
var player_goal:int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"playerscore".text = "Player: 0"
	$"computerscore".text = "Computer: 0"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_ball_computer_goal() -> void:
	computer_goal += 1
	print(computer_goal)
	$"computerscore".text = "Computer: " + str(computer_goal)
	$"ball".position.x = 556
	$"ball".position.y = set_random_y()
	$"ball".speed += 35
	$"ball".direction.x *= -1

func _on_ball_player_goal() -> void:
	player_goal += 1
	print(player_goal)
	$"playerscore".text = "Player:" + str(player_goal)
	$"ball".position.x = 556
	$"ball".position.y = set_random_y()
	$"ball".speed += 35
	$"ball".direction.x *= -1
	
	
func set_random_y():
	#randf_range(50,598)
	var random_y = randf_range(50,598)
	return random_y
	
	
