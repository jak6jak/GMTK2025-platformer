extends Area2D
class_name DeathManager

@onready var parent: CharacterBody2D = get_parent()

signal player_hit


func _physics_process(delta: float) -> void:
	pass

func _ready() -> void:
	player_hit.connect(player_is_hit)
	
	
func area_hit() -> void:
	pass


func _on_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	player_hit.emit()
func player_is_hit() -> void:
	print("oof")
