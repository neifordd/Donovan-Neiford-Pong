extends Area2D
@export var speed:int = 490
var direction:int = 0
var screensize
var ballpos
@export var ball:Area2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screensize = get_window().size
	ballpos = get_parent().get_node("ball")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#if position.y >= ballpos.position.y:
		#direction = -1
	#if position.y <= ballpos.position.y:
		#direction = 1
	#position.y = position.y + direction*(speed*delta)
	if position.y >= screensize.y - 90:
		position.y = screensize.y - 91
	if position.y <= 90:
		position.y = 91
	if position.y != ball.position.y:
		position.y = move_toward(position.y, ball.position.y, delta*speed)
