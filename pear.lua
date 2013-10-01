local pear_subcommand_List = {
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
}

local pear_argument_tree = pear_subcommand_List
pear_argument_tree['help'] = pear_subcommand_List

clink.arg.register_tree('pear', pear_argument_tree)
clink.arg.register_tree('pecl', pear_argument_tree)
