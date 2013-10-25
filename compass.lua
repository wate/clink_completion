local compass_subcommand_list = {
"clean",
"compile",
"create",
"init",
"watch",
"config",
"extension",
"frameworks",
"grid-img",
"imports",
"install",
"interactive",
"sprite",
"stats",
"unpack",
"validate",
"version"
}
local compass_argument_tree = compass_subcommand_list
compass_argument_tree['help'] = compass_subcommand_list
clink.arg.register_parser("compass", compass_argument_tree)
