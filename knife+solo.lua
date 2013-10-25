local knife_argument_tree = {
	'bootstrap',
	'delete',
	'deps',
	'diff',
	'download',
	'edit',
	'exec',
	'list',
	'raw',
	'search',
	'show',
	'ssh',
	'status',
	'upload',
	recipe = {'list'},
	help = {'list'},
	index = {'rebuild'},
	client = {
		bulk = {'delete'},
		'create',
		'delete',
		'edit',
		'list',
		'reregister',
		'show',
	},
	configure = {'client'},
	cookbook = {
		bulk = {'delete'},
		'create',
		'delete',
		'download',
		'list',
		metadata = {'from'},
		'show',
		'test',
		'upload',
		site = {
			'download',
			'install',
			'list',
			'search',
			'share',
			'show',
			'unshare'
		}
	},
	data = {
		bag = {
			'create',
			'delete',
			'edit',
			'from',
			'list',
			'show'
		}
	},
	environment = {
		'create',
		'delete',
		'edit',
		'from',
		'list',
		'show'
	},
	node = {
		bulk = {'delete'},
		'create',
		'delete',
		'edit',
		from = {'file'},
		'list',
		run_list = {
			'add',
			'remove',
			'set'
		},
		'show'
	},
	role = {
		bulk = {'delete'},
		'create',
		'delete',
		'edit',
		from = {'file'},
		'list',
		'show'
	},
	solo = {
		'bootstrap',
		'clean',
		'cook',
		'init',
		'prepare'
	},
	tag = {
		'create',
		'delete',
		'list'
	},
	user = {
		'create',
		'delete',
		'edit',
		'list',
		'reregister',
		'show'
	},
	'xargs'
}
clink.arg.register_parser('knife', knife_argument_tree)
