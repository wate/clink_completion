local wp_cache_parser = clink.arg.new_parser()
local wp_cap_parser = clink.arg.new_parser()
local wp_cli_parser = clink.arg.new_parser()
local wp_comment_parser = clink.arg.new_parser()
local wp_core_parser = clink.arg.new_parser()
local wp_db_parser = clink.arg.new_parser()
local wp_eval_parser = clink.arg.new_parser()
local wp_eval_file_parser = clink.arg.new_parser()
local wp_export_parser = clink.arg.new_parser()
local wp_help_parser = clink.arg.new_parser()
local wp_import_parser = clink.arg.new_parser()
local wp_media_parser = clink.arg.new_parser()
local wp_network_meta_parser = clink.arg.new_parser()
local wp_option_parser = clink.arg.new_parser()
local wp_plugin_parser = clink.arg.new_parser()
local wp_post_parser = clink.arg.new_parser()
local wp_post_meta_parser = clink.arg.new_parser()
local wp_rewrite_parser = clink.arg.new_parser()
local wp_role_parser = clink.arg.new_parser()
local wp_scaffold_parser = clink.arg.new_parser()
local wp_search_replace_parser = clink.arg.new_parser()
local wp_shell_parser = clink.arg.new_parser()
local wp_site_parser = clink.arg.new_parser()
local wp_term_parser = clink.arg.new_parser()
local wp_theme_parser = clink.arg.new_parser()
local wp_transient_parser = clink.arg.new_parser()
local wp_user_parser = clink.arg.new_parser()
local wp_user_meta_parser = clink.arg.new_parser()

local wp_parser = clink.arg.new_parser()
wp_parser:set_arguments({
	"cache" .. clink.arg.new_parser():set_arguments({'add', 'list', 'remove', 'repackage'}),
	"cap"
	})
clink.arg.register_parser("wp", vagrant_parser)


wp blog create|delete
cache
cap
cli
comment
core
db
eval
eval-file
export
help
import
media
network-meta
option
plugin
post
post-meta
rewrite
role
scaffold
search-replace
shell
site
term
theme
transient
user
user-meta