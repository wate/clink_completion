local pear_parser = clink.arg.new_parser()
pear_parser:set_arguments({
	"build",
	"bundle",
	"channel-add",
	"channel-alias",
	"channel-delete",
	"channel-discover",
	"channel-info",
	"channel-login",
	"channel-logout",
	"channel-update",
	"clear-cache",
	"config-create",
	"config-get",
	"config-help",
	"config-set",
	"config-show",
	"convert",
	"cvsdiff",
	"cvstag",
	"download",
	"download-all",
	"info",
	"install",
	"list",
	"list-all",
	"list-channels",
	"list-files",
	"list-upgrades",
	"login",
	"logout",
	"makerpm",
	"package",
	"package-dependencies",
	"package-validate",
	"pickle",
	"remote-info",
	"remote-list",
	"run-scripts",
	"run-tests",
	"search",
	"shell-test",
	"sign",
	"svntag",
	"uninstall",
	"update-channels",
	"upgrade",
	"upgrade-all"
	})
local pear_help_parser = clink.arg.new_parser()
pear_help_parser:set_arguments({
	"help" .. pear_parser
	})
clink.arg.register_parser('pear', pear_parser)
clink.arg.register_parser('pear', pear_help_parser)
clink.arg.register_parser('pecl', pear_parser)
clink.arg.register_parser('pecl', pear_help_parser)
