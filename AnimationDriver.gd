class_name AnimationDriver extends Node
var animations := {}
func _animation0():
	pass
func _animation1():
	pass
func _animation2():
	pass
func _animation3():
	pass
func _animation4():
	pass
func _animation5():
	pass
func _animation6():
	pass
func _animation7():
	pass
func _animation8():
	pass
func _animation9():
	pass
func name(id: int, name: String):
	var call = Callable(self, “animation”+str(id))
	animations.merge({name : call})
func animate(name: String):
	animations.get(name).call()
