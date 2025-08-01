extends Node2D
class_name level_manager

static var total_deaths :int = 0
static var wins : int = 0
static var tries_till_card_draw = 5
signal reset_level
signal draw_cards

static var _singleton: level_manager = self
static var singleton: level_manager:
	get:
		return _singleton
func _ready() -> void:
	pass

func kill_player()->void:
	print("YOU DIED")
	reset_level.emit()
	total_deaths += 1
	tries_till_card_draw -= 1
	if tries_till_card_draw == 0:
		draw_cards.emit()
	print(total_deaths)
func level_won()-> void:
		print("reached end!")
		
func _init() -> void:
	if singleton == null:
		_singleton = self
