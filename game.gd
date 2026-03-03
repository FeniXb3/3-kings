extends Node2D

var score: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	SignalBus.coin_picked.connect(_on_coin_picked)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _on_coin_picked():
	score += 1
	print(score)
