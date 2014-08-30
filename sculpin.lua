local sculpin_parser = clink.arg.new_parser()
sculpin_parser:set_flags(
	"--xml",
	"--format",
	"--raw",
	"--help", "-h",
	"--quiet", "-q",
	"--verbose", "-v", "-vv", "-vvv",
	"--version", "-V",
	"--ansi", "--no-ansi",
	"--no-interaction", "-n",
	"--project-dir",
	"--env", "-e",
	"--no-debug",
	"--safe",
	"--git-version"
)
sculpin_parser:set_arguments({
	"list",
	"dump-autoload"..clink.arg.new_parser():set_flags({
		"--optimize", "-o"
	}), "dumpautoload",
	"generate"..clink.arg.new_parser():set_flags({
		"--server",
		"--watch",
		"--url",
		"--port"
	}),
	"help"..clink.arg.new_parser():set_arguments({
		"dump-autoload", "dumpautoload",
		"generate",
		"install",
		"self-update", "selfupdate",
		"server", "serve",
		"cache:clear",
		"theme:list"
	}),
	"install",
	"self-update", "selfupdate",
	"server"..clink.arg.new_parser():set_flags({
		"--port"
	}), "serve",
	"cache:clear",
	"theme:list"
})
clink.arg.register_parser('sculpin', sculpin_parser)