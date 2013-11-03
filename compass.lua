local compass_environment_arguments = clink.arg.new_parser()
compass_environment_arguments:set_arguments({"development", "production"})

local compass_output_style_arguments = clink.arg.new_parser()
compass_output_style_arguments:set_arguments({"nested", "expanded", "compact", "compressed"})

local compass_syntax_arguments = clink.arg.new_parser()
compass_syntax_arguments:set_arguments({"scss", "sass"})

local compass_common1_flags = {
	"-r", "--require",
	"-l", "--load",
	"-L", "--load-all",
	"-I", "--import-path",
	"-q", "--quiet",
	"--trace",
	"--force",
	"--dry-run",
	"--boring",
	"-?", "-h", "--help"
}

local compass_common2_flags = {
	"-e" .. compass_environment_arguments,
	"--environment" .. compass_environment_arguments,
	"-s" .. compass_output_style_arguments,
	"--output-style" .. compass_output_style_arguments,
	"-c", "--config",
	"--app",
	"--app-dir",
	"--sass-dir" ,
	"--images-dir",
	"--javascripts-dir",
	"--fonts-dir",
	"--relative-assets",
	"--no-line-comments",
	"--http-path",
	"--generated-images-path"
}
local compass_common_parser = clink.arg.new_parser()
compass_common_parser:set_flags(compass_common1_flags, compass_common2_flags);

local compass_create_parser = clink.arg.new_parser()
compass_create_parser:set_flags(
	compass_common1_flags,
	compass_common2_flags,
	"--using",
	"-x" .. compass_syntax_arguments,
	"--syntax" .. compass_syntax_arguments,
	"--prepare",
	"--bare"
	)
local compass_init_parser = clink.arg.new_parser()
compass_init_parser:set_flags(
	compass_common1_flags,
	compass_common2_flags,
	"--using",
	"-x" .. compass_syntax_arguments,
	"--syntax" .. compass_syntax_arguments,
	"--prepare"
	)
local compass_install_parser = clink.arg.new_parser()
compass_install_parser:set_flags(
	compass_common1_flags,
	compass_common2_flags,
	"-x" .. compass_syntax_arguments,
	"--syntax" .. compass_syntax_arguments
	)
local compass_compile_parser = clink.arg.new_parser()
compass_compile_parser:set_flags(compass_common1_flags, compass_common2_flags, "--time", "--debug-info", "--no-debug-info")

local compass_watch_parser = clink.arg.new_parser()
compass_watch_parser:set_flags(compass_common1_flags, compass_common2_flags, "--time", "--debug-info", "--no-debug-info", "--poll")

local compass_config_parser = clink.arg.new_parser()
compass_config_parser:set_flags(compass_common1_flags, compass_common2_flags, "--debug", "-p", "--property")

local compass_sprite_parser = clink.arg.new_parser()
compass_sprite_parser:set_flags(compass_common1_flags, compass_common2_flags, "-f", "--skip-overrides")

local compass_version_parser = clink.arg.new_parser()
compass_version_parser:set_flags("-q", "--quiet", "--major", "--minor", "--patch", "--revision", "-?", "-h", "--help")

local compass_parser = clink.arg.new_parser()
compass_parser:set_arguments({
	"clean" .. compass_common_parser,
	"compile" .. compass_compile_parser,
	"create" .. compass_create_parser,
	"init" .. compass_init_parser,
	"watch" .. compass_watch_parser,
	"config" .. compass_config_parser,
	extension = {"install", "uninstall", "list"},
	"frameworks" .. clink.arg.new_parser():set_flags(compass_common1_flags),
	"imports",
	"install" .. compass_install_parser,
	"interactive" .. compass_common_parser,
	"sprite" .. compass_sprite_parser,
	"stats" .. compass_common_parser,
	"unpack" .. compass_common_parser,
	"validate" .. compass_common_parser,
	"version" .. compass_version_parser
	})
local compass_help_parser = clink.arg.new_parser()
compass_help_parser:set_arguments({
    "help" .. clink.arg.new_parser():set_arguments({
    	compass_parser:flatten_argument(1)
    	})
})
clink.arg.register_parser("compass", compass_parser)
clink.arg.register_parser("compass", compass_help_parser)
