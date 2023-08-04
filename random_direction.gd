extends StaticBody2D

var speed = randf_range(50, 150)
var value = randf_range(-1, 1)
var direction = Vector2(value,value).normalized()
var speed_variation_rate = 0.5
var direction_variation_rate = 0.5

func _ready():
	var val1 = randf_range(0, get_viewport().size.x)
	var val2 = randf_range(0, get_viewport().size.y)
	position = Vector2(val1, val2)

func _physics_process(delta):
	randomize_speed_and_direction()
	position += direction * speed * delta

func randomize_speed_and_direction():
	if randf() < speed_variation_rate:
		speed = randf_range(50, 150)
	if randf() < direction_variation_rate:
		direction = Vector2(value, value).normalized()
