extends Interactable

func interact():
	get_parent().get_parent().get_parent().get_parent().get_node("Player").set_physics_process(true)
	get_parent().get_parent().get_parent().get_parent().get_node("Player").get_child(2).set_process(true)
	get_parent().get_parent().get_parent().get_parent().get_node("Player").get_child(3).set_process(true)
	get_parent().get_parent().get_parent().get_parent().get_node("Player").get_child(4).set_process(true)
	get_parent().get_parent().get_parent().get_parent().get_node("Player").get_child(5).set_process(true)
	Global.hacia_comerdor=true
