# Necromancy
Necromancy is a animation driver writen for the godot game engine. <br/>
Necromancy defines a set of functions for interacting with objects added to it, along with a AnimationDriver Object which allows for defining annimations to be automaticaly performed
## Functions:
### bind(node: Spatial, name: String, parent: String)
Binds a object, node, refered to as name to a object named parent.
If parent is null it creates a root object, to which objects my be bound.
### updateObj(name: String)
updates object name, and all of it's children to the configuration of parrent objects
### rotate(name: String, angle: Vector3)
rotates a object to angle angle, then updates all child objects
### getAngle(name)
Returns a Vector3 containing the objects relative angle.
## Necromancy AnimationDriver Functions:
### _animation0()
### _animation1()
### _animation2()
### _animation3()
### _animation4()
### _animation5()
### _animation6()
### _animation7()
### _animation8()
### _animation9()
defines a animation.
### name(id: int, name: String)
allows for naming a animation for use with animate(name)
### animate(name: String)
runs a animation called name, allowing for ease of use with child types which may define a specific set of animations, beyond the standered set.
