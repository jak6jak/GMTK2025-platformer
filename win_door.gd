extends AnimatedSprite2D
class_name win_door

func _ready() -> void:
	pass


func _on_area_2d_area_entered(area: Area2D) -> void:
	level_manager.singleton.level_won()
