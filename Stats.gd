extends Node

export(int) var max_health = 1
# Use an onready var to make sure health is set correctly, even when max_health
# is overridden.
onready var health = max_health setget set_health

signal no_health

func set_health(value):
	health = value
	if health <= 0:
		emit_signal("no_health")
