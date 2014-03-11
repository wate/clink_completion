--------------------------------------------------------
-- Vagrant Plugins
--------------------------------------------------------
sahara = false          -- sahara
global_status = true	-- global-status
vbguest = true          -- vagrant-vbguest
multi_putty = true		-- vagrant-multi-putty
vbox_snapshot = true	-- vagrant-vbox-snapshot

--------------------------------------------------------
-- vagrant
--------------------------------------------------------
local vagrant_parser = clink.arg.new_parser()
vagrant_parser:set_arguments({
	"box" .. clink.arg.new_parser():set_arguments({'add', 'list', 'remove', 'repackage'}),
	'destroy',
	'halt',
	'init',
	'package',
	"plugin" .. clink.arg.new_parser():set_arguments({'install', 'license', 'list', 'update', 'uninstall'}),
	'provision',
	'reload',
	'resume',
	'ssh',
	'ssh-config',
	'status',
	'suspend',
	'up'
	})
clink.arg.register_parser("vagrant", vagrant_parser)
--------------------------------------------------------
-- sahara
--------------------------------------------------------
if sahara then
	local vagrant_sahara_parser = clink.arg.new_parser()
	vagrant_sahara_parser:set_arguments({
		"sandbox"..clink.arg.new_parser():set_arguments({
			'on',
			'rollback',
			'commit',
			'status',
			'off'
		})
	})
	clink.arg.register_parser("vagrant", vagrant_sahara_parser)
end
--------------------------------------------------------
-- global-status
--------------------------------------------------------
if global_status then
	local vagrant_global_status_parser = clink.arg.new_parser()
	vagrant_global_status_parser:set_arguments({"global-status"})
	clink.arg.register_parser("vagrant", vagrant_global_status_parser)
end
--------------------------------------------------------
-- vagrant-multi-putty
--------------------------------------------------------
if multi_putty then
	local vagrant_multi_putty_parser = clink.arg.new_parser()
	vagrant_multi_putty_parser:set_arguments({"putty"})
	clink.arg.register_parser("vagrant", vagrant_multi_putty_parser)
end
--------------------------------------------------------
-- vagrant-vbox-snapshot
--------------------------------------------------------
if vbox_snapshot then
	local vagrant_vbox_snapshot_parser = clink.arg.new_parser()
	vagrant_vbox_snapshot_parser:set_arguments({
		"snapshot"..clink.arg.new_parser():set_arguments({
			'take',
			'list',
			'back',
			'delete',
			'go'
		})
	})
	clink.arg.register_parser("vagrant", vagrant_vbox_snapshot_parser)
end
--------------------------------------------------------
-- vagrant-vbguest
--------------------------------------------------------
if vbguest then
	local vagrant_vbguest_parser = clink.arg.new_parser()
	vagrant_vbguest_parser:set_arguments({
		"vbguest"..clink.arg.new_parser():set_flags(
			"--do"..clink.arg.new_parser():set_arguments({"start", "rebuild", "install"}),
			"--status",
			"--force", "-f",
			"--auto-reboot", "-b",
			"--no-remote", "-R",
			"--iso"
		)
	})

	clink.arg.register_parser("vagrant", vagrant_vbguest_parser)
end
