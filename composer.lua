local composer_config_parser = clink.arg.new_parser()
composer_config_parser:set_flags(
"--global", "-g",
"--editor", "-e",
"--unset",
"--list", "-l",
"--file", "-f"
)
local composer_create_project_parser = clink.arg.new_parser()
composer_create_project_parser:set_flags(
"--repository-url",
"--stability", "-s",
"--prefer-source",
"--prefer-dist",
"--dev",
"--no-install",
"--no-plugins",
"--no-scripts",
"--no-progress",
"--keep-vcs",
"--link-type",
"--optimize", "-o"
)
local composer_help_parser = clink.arg.new_parser()
composer_help_parser:set_flags(
"--xml",
"--format",
"--raw",
"--help", "-h",
"--quiet", "-q",
"--verbose", "-v", "-vv", "-vvv",
"--version", "-V",
"--ansi",
"--no-ansi",
"--no-interaction", "-n",
"--profile",
"--working-dir", "-d"
)
local composer_init_parser = clink.arg.new_parser()
composer_init_parser:set_flags(
"--name",
"--description",
"--author",
"--homepage",
"--require",
"--require-dev",
"--stability", "-s"
)
local composer_install_parser = clink.arg.new_parser()
composer_install_parser:set_flags(
"--prefer-source",
"--prefer-dist",
"--dry-run",
"--dev",
"--no-dev",
"--no-scripts",
"--no-plugins",
"--no-progress",
"--optimize-autoloader", "-o"
)
local composer_require_parser = clink.arg.new_parser()
composer_require_parser:set_flags(
"--prefer-source",
"--prefer-dist",
"--dev",
"--no-update",
"--no-progress"
)
local composer_show_parser = clink.arg.new_parser()
composer_show_parser:set_flags(
"--installed", "-i",
"--platform", "-p",
"--self", "-s"
)
local composer_update_parser = clink.arg.new_parser()
composer_update_parser:set_flags(
"--prefer-source",
"--prefer-dist",
"--dry-run",
"--dev",
"--no-dev",
"--no-scripts",
"--no-plugins",
"--no-progress",
"--optimize-autoloader", "-o",
"--lock",
"--with-dependencies"
)
local composer_parser = clink.arg.new_parser()
composer_parser:set_flags(
"--help", "-h",
"--quiet", "-q",
"--verbose", "-v", "-vv", "-vvv",
"--version", "-V",
"--ansi",
"--no-ansi",
"--no-interaction", "-n",
"--profile",
"--working-dir", "-d"
);
composer_parser:set_arguments({
"about",
"archive",
"config"..composer_config_parser,
"create-project"..composer_create_project_parser,
"global",
"help"..composer_help_parser,
"init"..composer_init_parser,
"install"..composer_install_parser,
"licenses",
"list"..clink.arg.new_parser():set_flags("--xml", "--raw", "--format"),
"require"..composer_require_parser,
"run-script",
"search"..clink.arg.new_parser():set_flags("--only-name", "-N"),
"self-update",
"show"..composer_show_parser,
"status",
"update"..composer_update_parser,
"validate"
})
clink.arg.register_parser('composer', composer_parser)
