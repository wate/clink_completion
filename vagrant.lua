local vagrant_parser = clink.arg.new_parser()
vagrant_parser:set_arguments({
	"box" .. clink.arg.new_parser():set_arguments({'add', 'list', 'remove', 'repackage'}),
	'destroy',
	'halt',
	'init',
	'package',
	"plugin" .. clink.arg.new_parser():set_arguments({'install', 'license', 'list', 'uninstall'}),
	'provision',
	'reload',
	'resume',
	'ssh',
	'ssh-config',
	'status',
	'suspend',
	'up',
	-- sahara plugin
	"sandbox" .. clink.arg.new_parser():set_arguments({'on', 'rollback', 'commit', 'status', 'off'}),
	-- global-status plugin
	"global-status",
	-- PuTTY plugin
	"putty"
	})
clink.arg.register_parser("vagrant", vagrant_parser)
