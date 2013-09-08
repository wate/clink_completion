local cake_argument_tree = {
	bake = {
		'db_config',
		'model',
		'view',
		'controller',
		'project',
		'fixture',
		'test',
		'plugin',
		'all'
	}
}
clink.arg.register_tree('cake', cake_argument_tree)
