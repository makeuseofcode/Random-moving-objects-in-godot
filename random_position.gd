extends StaticBody2D

var speed = randf_range(50, 150)
var value = randf_range(-1, 1)
var direction = Vector2(value,value).normalized()

func _ready():
	var val1 = randf_range(0, get_viewport().size.x)
	var val2 = randf_range(0, get_viewport().size.y)
	position = Vector2(val1, val2)

func _physics_process(delta):
	position += direction * speed * delta
