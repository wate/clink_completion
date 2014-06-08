vbox_snapshot = true	-- vagrant-vbox-snapshot
vbguest = true          -- vagrant-vbguest
sahara = false          -- sahara
local vagrant_box_add_parser = clink.arg.new_parser();
vagrant_box_add_parser:set_flags(
	"--clean", "-c",
	"--force", "-f",
	"--insecure",
	"--cacert",
	"--cert",
	"--provider",
	"--box-version",
	"--checksum",
	"--checksum-type",
	"--name",
	"--help", "-h"
);
local vagrant_box_list_parser = clink.arg.new_parser();
vagrant_box_list_parser:set_flags(
	"--box-info", "-i",
	"--help", "-h"
);
local vagrant_box_outdated_parser = clink.arg.new_parser();
vagrant_box_outdated_parser:set_flags("--global", "--help", "-h");
local vagrant_box_remove_parser = clink.arg.new_parser();
vagrant_box_remove_parser:set_flags(
	"--force", "-f",
	"--provider",
	"--box-version",
	"--help", "-h"
);
local vagrant_box_repackage_parser = clink.arg.new_parser();
vagrant_box_repackage_parser:set_flags("--help", "-h");
local vagrant_box_update_parser = clink.arg.new_parser();
vagrant_box_update_parser:set_flags(
	"--box",
	"--provider",
	"--help", "-h"
);
local vagrant_box_parser = clink.arg.new_parser()
vagrant_box_parser:set_flags("--help", "-h");
vagrant_box_parser:set_arguments({
	"add"..vagrant_box_add_parser,
	"list"..vagrant_box_list_parser,
	"outdated"..vagrant_box_outdated_parser,
	"remove"..vagrant_box_remove_parser,
	"repackage"..vagrant_box_repackage_parser,
	"update"..vagrant_box_update_parser
});
local vagrant_connect_parser = clink.arg.new_parser()
vagrant_connect_parser:set_flags(
	"--disable-static-ip",
	"--static-ip",
	"--ssh",
	"--help", "-h"
);
local vagrant_destroy_parser = clink.arg.new_parser()
vagrant_destroy_parser:set_flags(
	"--force", "-f",
	"--help", "-h"
);
local vagrant_global_status_parser = clink.arg.new_parser()
vagrant_global_status_parser:set_flags(
	"--prune",
	"--help", "-h"
);
local vagrant_rdp_parser = clink.arg.new_parser()
vagrant_rdp_parser:set_flags("--help", "-h");
local vagrant_halt_parser = clink.arg.new_parser()
vagrant_halt_parser:set_flags(
	"--force", "-f",
	"--help", "-h"
);
local vagrant_help_parser = clink.arg.new_parser()
vagrant_help_parser:set_arguments({
	"box",
	"connect",
	"destroy",
	"global-status",
	"halt",
	"init",
	"list-commands",
	"login",
	"package",
	"plugin",
	"provision",
	"rdp",
	"reload",
	"resume",
	"share",
	"ssh",
	"ssh-config",
	"status",
	"suspend",
	"up",
	"rsync",
	"rsync-auto"
});
local vagrant_init_parser = clink.arg.new_parser()
vagrant_init_parser:set_flags(
	"--force", "-f",
	"--minimal", "-m",
	"--output",
	"--help", "-h"
);
local vagrant_list_commands_parser = clink.arg.new_parser()
vagrant_list_commands_parser:set_flags("--help", "-h");
local vagrant_login_parser = clink.arg.new_parser()
vagrant_login_parser:set_flags(
	"--check", "-c",
	"--logout", "-k",
	"--help", "-h"
);
local vagrant_package_parser = clink.arg.new_parser()
vagrant_package_parser:set_flags(
	"--base",
	"--output",
	"--include",
	"--vagrantfile",
	"--help", "-h"
);
local vagrant_plugin_install_parser = clink.arg.new_parser()
vagrant_plugin_install_parser:set_flags(
	"--entry-point",
	"--plugin-prerelease",
	"--plugin-source",
	"--plugin-version",
	"--verbose",
	"--help", "-h"
);
local vagrant_plugin_license_parser = clink.arg.new_parser()
vagrant_plugin_license_parser:set_flags("--help", "-h");
local vagrant_plugin_list_parser = clink.arg.new_parser()
vagrant_plugin_list_parser:set_flags("--help", "-h");
local vagrant_plugin_uninstall_parser = clink.arg.new_parser()
vagrant_plugin_uninstall_parser:set_flags("--help", "-h");
local vagrant_plugin_update_parser = clink.arg.new_parser()
vagrant_plugin_update_parser:set_flags("--help", "-h");
local vagrant_plugin_parser = clink.arg.new_parser()
vagrant_plugin_parser:set_flags("--help", "-h");
vagrant_plugin_parser:set_arguments({
	"install"..vagrant_plugin_install_parser,
	"license"..vagrant_plugin_license_parser,
	"list"..vagrant_plugin_list_parser,
	"uninstall"..vagrant_plugin_uninstall_parser,
	"update"..vagrant_plugin_update_parser
});
local vagrant_provision_parser = clink.arg.new_parser()
vagrant_provision_parser:set_flags(
	"--provision-with",
	"--parallel", "--no-parallel",
	"--help", "-h"
);
local vagrant_reload_parser = clink.arg.new_parser()
vagrant_reload_parser:set_flags(
	"--provision", "--no-provision",
	"--provision-with",
	"--help", "-h"
);
local vagrant_resume_parser = clink.arg.new_parser()
vagrant_resume_parser:set_flags("--help", "-h");
local vagrant_rsync_parser = clink.arg.new_parser()
vagrant_rsync_parser:set_flags("--help", "-h");
local vagrant_rsync_auto_parser = clink.arg.new_parser()
vagrant_rsync_auto_parser:set_flags("--help", "-h");
local vagrant_share_parser = clink.arg.new_parser()
vagrant_share_parser:set_flags(
	"--disable-http",
	"--http",
	"--https",
	"--ssh",
	"--ssh-no-password",
	"--ssh-port",
	"--ssh-once",
	"--help", "-h"
);
local vagrant_ssh_parser = clink.arg.new_parser()
vagrant_ssh_parser:set_flags(
	"--command", "-c",
	"--plain", "-p",
	"--help", "-h"
);
local vagrant_ssh_config_parser = clink.arg.new_parser()
vagrant_ssh_config_parser:set_flags("--host", "--help", "-h");
local vagrant_status_parser = clink.arg.new_parser()
vagrant_status_parser:set_flags("--help", "-h");
local vagrant_suspend_parser = clink.arg.new_parser()
vagrant_suspend_parser:set_flags("--help", "-h");
local vagrant_up_parser = clink.arg.new_parser()
vagrant_up_parser:set_flags(
	"--provision", "--no-provision", 
	"--provision-with",
	"--destroy-on-error", "--no-destroy-on-error", 
	"--parallel", "--no-parallel", 
	"--provider", 
	"--help", "-h"
);
local vagrant_parser = clink.arg.new_parser();
vagrant_parser:set_flags(
	"--version", "-v",
	"--help", "-h"
);
vagrant_parser:set_arguments({
	"list-commands"..vagrant_list_commands_parser,
	"box"..vagrant_box_parser,
	"connect"..vagrant_connect_parser,
	"destroy"..vagrant_destroy_parser,
	"global-status"..vagrant_global_status_parser,
	"halt"..vagrant_halt_parser,
	"help"..vagrant_help_parser,
	"init"..vagrant_init_parser,
	"login"..vagrant_login_parser,
	"package"..vagrant_package_parser,
	"plugin"..vagrant_plugin_parser,
	"provision"..vagrant_provision_parser,
	"rdp"..vagrant_rdp_parser,
	"reload"..vagrant_reload_parser,
	"resume"..vagrant_resume_parser,
	"share"..vagrant_share_parser,
	"ssh"..vagrant_ssh_parser,
	"ssh-config"..vagrant_ssh_config_parser,
	"status"..vagrant_status_parser,
	"suspend"..vagrant_suspend_parser,
	"up"..vagrant_up_parser,
	"rsync"..vagrant_rsync_parser,
	"rsync-auto"..vagrant_rsync_auto_parser,
	"version"
})
clink.arg.register_parser("vagrant", vagrant_parser)
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
