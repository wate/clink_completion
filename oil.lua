local oil_generate_argument_parser = {
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
local oil_package_argument_parser = {
	'help',
	'install',
	'uninstall'
}
local oil_refine_argument_parser = {
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
local oil_cell_argument_parser = {
	'help',
	'list',
	'search',
	'install',
	'upgrade',
	'uninstall',
	'info',
	'details'
}
local oil_test_argument_parser = {
	'-group',
	'-exclude-group',
	'-coverage-html',
	'-coverage-clover',
	'-coverage-text',
	'-coverage-php',
	'-log-junit'
}
local oil_server_argument_parser = {
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
local oil_argument_parser = {
	'help',
	generate = oil_generate_argument_parser,
	g = oil_generate_argument_parser,
	package = oil_package_argument_parser,
	p = oil_package_argument_parser,
	'console',
	'c',
	refine = oil_refine_argument_parser,
	r = oil_refine_argument_parser,
	cell = oil_cell_argument_parser,
	cells = oil_cell_argument_parser,
	test = oil_test_argument_parser,
	t = oil_test_argument_parser,
	server = oil_server_argument_parser,
	s = oil_server_argument_parser
}
clink.arg.register_parser('oil', oil_argument_parser)
