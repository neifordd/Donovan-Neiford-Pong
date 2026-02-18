extends Area2D

@export var speed:int = 25
const radius:float = 30.0
var text:String = "This is our first made string"
var isalive:bool = true






# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Hello World")
	print("text")
	print(speed * radius)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x += 1
	position.y += 2
