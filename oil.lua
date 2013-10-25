local oil_generate_argument_tree = {
	'help',
	'config',
	'controller',
	'model',
	'migration',
	'task',
	'views',
	'admin',
	'scaffold'
}
local oil_package_argument_tree = {
	'help',
	'install',
	'uninstall'
}

local oil_refine_argument_tree = {
	'help',
	'install',
	'robots',
	'robots:protect',
	'fromdb',
	'fromdb:help',
	'fromdb:scaffold',
	'fromdb:model',
	'migrate',
	'migrate:help',
	'session',
	'session:create',
	'session:remove',
	'session:clear',
	'session:help'
}

local oil_cell_argument_tree = {
	'help',
	'list',
	'search',
	'install',
	'upgrade',
	'uninstall',
	'info',
	'details'
}
local oil_test_argument_tree = {
	'-group',
	'-exclude-group',
	'-coverage-html',
	'-coverage-clover',
	'-coverage-text',
	'-coverage-php',
	'-log-junit'
}
local oil_server_argument_tree = {
	'-php',
	'-port',
	'-p',
	'-host',
	'-h',
	'-docroot',
	'-d',
	'-router',
	'-r'
}

local oil_argument_tree = {
	'help',
	generate = oil_generate_argument_tree,
	g = oil_generate_argument_tree,
	package = oil_package_argument_tree,
	p = oil_package_argument_tree,
	'console',
	'c',
	refine = oil_refine_argument_tree,
	r = oil_refine_argument_tree,
	cell = oil_cell_argument_tree,
	cells = oil_cell_argument_tree,
	test = oil_test_argument_tree,
	t = oil_test_argument_tree,
	server = oil_server_argument_tree,
	s = oil_server_argument_tree
}
clink.arg.register_parser('oil', oil_argument_tree)
