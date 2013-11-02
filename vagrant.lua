local vagrant_parser = clink.arg.new_parser()
vagrant_parser:set_arguments({
	box = {'add', 'list', 'remove', 'repackage'},
	'destroy',
	'halt',
	'init',
	'package',
	plugin = {'install', 'license', 'list', 'uninstall'},
	'provision',
	'reload',
	'resume',
	'ssh',
	'ssh-config',
	'status',
	'suspend',
	'up',
	-- sahara plugin
	sandbox = {'on', 'rollback', 'commit', 'status', 'off'},
	-- global-status plugin
	"global-status",
	-- PuTTY plugin
	"putty"
})
clink.arg.register_parser("vagrant", vagrant_parser)
