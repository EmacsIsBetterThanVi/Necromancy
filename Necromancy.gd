# Necromancy: Advanced Armature Driver
extends Node
var BoundData: = {
	
}
func bind(node: Spatial, name: String, parent: String):
	BoundData.merge({name : {"NODE" : node, "POS" : node.translation, "DEG" : node.rotation_degrees, "PARENT" : parent, "CHILDREN" : []}}, true)
	if parent!=null:
		((BoundData.get(parent) as Dictionary).get("CHILDREN") as Array).append(name)
func updateObj(key: String):
	var OBJECT: = ((BoundData.get(key) as Dictionary).get("NODE") as Spatial)
	for child  in BoundData.get(key).get("CHILDREN"):
		var NODE: = ((child as Dictionary).get("NODE") as Spatial)
		NODE.rotation_degrees = (child as Dictionary).get("DEG") + OBJECT.rotation_degrees
		NODE.translation.z = sin(deg2rad(OBJECT.rotation_degrees.y))*(child as Dictionary).get("POS").z
		NODE.translation.y = cos(deg2rad(OBJECT.rotation_degrees.z))*(child as Dictionary).get("POS").y*sin(deg2rad(OBJECT.rotation_degrees.y))
		NODE.translation.x = sin(deg2rad(OBJECT.rotation_degrees.z))*(child as Dictionary).get("POS").x*cos(deg2rad(OBJECT.rotation_degrees.y))
		updateObj(child)
func rotate(name: String, Angle: Vector3):
	(BoundData.get(name) as Dictionary).get("DEG").x = Angle.x
	(BoundData.get(name) as Dictionary).get("DEG").y = Angle.y
	(BoundData.get(name) as Dictionary).get("DEG").z = Angle.z
	updateObj(name)
func getAngle(name: String) -> Vector3:
	return ((BoundData.get(name) as Dictionary).get("DEG") as Vector3)