local gem_argument_tree = {
	'build',
	'cert',
	'check',
	'cleanup',
	'contents',
	'dependency',
	'environment',
	'fetch',
	'generate_index',
	'help' = {'commands', 'examples', 'platforms'},
	'install',
	'list',
	'lock',
	'mirror',
	'outdated',
	'owner',
	'pristine',
	'push',
	'query',
	'rdoc',
	'search',
	'sources',
	'specification',
	'uninstall',
	'unpack',
	'update',
	'which',
	'yank'
}
clink.arg.register_tree('gem', gem_argument_tree)
