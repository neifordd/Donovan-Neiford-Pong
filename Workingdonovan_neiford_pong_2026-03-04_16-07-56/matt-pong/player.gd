extends Area2D
@export var speed:int = 500
var direction:int = 0
var screensize
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screensize = get_window().size


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_down"):
		direction = 1
	elif Input.is_action_pressed("ui_up"):
		direction = -1
	else: 
		direction = 0
	if position.y >= screensize.y - 90:
		position.y = screensize.y - 91
	if position.y <= 90:
		position.y = 91
	position.y = position.y + direction*(speed*delta)
