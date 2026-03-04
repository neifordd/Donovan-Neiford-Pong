extends Area2D

@export var speed:int = 25
var direction_x:int = 0
var direction_y:int = 0
var direction = Vector2(0,0)
var screensize 
signal player_goal
signal computer_goal

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	direction = Vector2(set_random_direction(), set_random_direction())
	screensize = get_window().size
	print(screensize)
	

	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position = position + direction * (speed * delta)
	if position.x >= screensize.x or position.x <= 0:
		direction.x *= -1
	if position.y >= screensize.y or position.y <= 0:
		direction.y *= -1


func _on_area_entered(area: Area2D) -> void:
	if area.name == "player":
		direction.x *= -1
	if area.name == "computer":
		direction.x *= -1
	if area.name == "playergoal":
		emit_signal("player_goal")
	if area.name == "computergoal":
		emit_signal("computer_goal")

func set_random_direction():
	var choices = [-1,1]
	var random_direction = choices.pick_random()
	return random_direction
	
	
	
	
