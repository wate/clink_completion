local sass_output_style_arguments = {"nested", "compact", "compressed", "expanded"}
local sass_parser = clink.arg.new_parser()
sass_parser:set_flags(
"-s", "--stdin",
"--trace",
"--unix-newlines",
"--scss",
"--watch",
"--update",
"--stop-on-error",
"--poll",
"-f", "--force",
"-c", "--check",
"-t" .. clink.arg.new_parser():set_arguments(sass_output_style_arguments),
"--style" .. clink.arg.new_parser():set_arguments(sass_output_style_arguments),
"--precision",
"-q", "--quiet",
"--compass",
"-g", "--debug-info",
"-l", "--line-numbers",
"--line-comments",
"-i", "--interactive",
"-I", "--load-path",
"-r", "--require",
"--cache-location",
"-C", "--no-cache",
"--sourcemap",
"-E",
"-?", "-h", "--help",
"-v", "--version"
)
clink.arg.register_parser("sass", sass_parser)
clink.arg.register_parser("scss", sass_parser)
