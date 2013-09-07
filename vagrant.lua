local vagrant_argument_tree = {
	box = {
		'add',
		'list',
		'remove',
		'repackage'
	},
	'destroy',
	'halt',
	'init',
	'package',
	plugin = {
		'install',
		'license',
		'list',
		'uninstall'
	},
	'provision',
	'reload',
	'resume',
	'ssh',
	'ssh-config',
	'status',
	'suspend',
	'up',
	-- sahara plugin
	sandbox = {
		'on',
		'rollback',
		'commit',
		'status',
		'off'
	},
	-- global-status plugin
	"global-status",
	-- PuTTY plugin
	"putty"
}
clink.arg.register_tree("vagrant", vagrant_argument_tree)
