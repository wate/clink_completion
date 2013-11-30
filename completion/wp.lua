local wp_global_option = {
	"--config",
	"--path",
	"--url",
	"--user",
	"--require",
	"--color",
	"--no-color",
	"--debug",
	"--prompt",
	"--quiet",
	"--help"
}
--------------------------------------------------------
-- wp cache
--------------------------------------------------------
local wp_cache_parser = clink.arg.new_parser()
wp_cache_parser:set_flags(wp_global_option)
wp_cache_parser:set_arguments({
	"add"..clink.arg.new_parser():set_flags(wp_global_option),		-- Add a value to the object cache.
	"decr"..clink.arg.new_parser():set_flags(wp_global_option),		-- Decrement a value in the object cache.
	"delete"..clink.arg.new_parser():set_flags(wp_global_option),	-- Remove a value from the object cache.
	"flush"..clink.arg.new_parser():set_flags(wp_global_option),	-- Flush the object cache.
	"get"..clink.arg.new_parser():set_flags(wp_global_option),		-- Get a value from the object cache.
	"incr"..clink.arg.new_parser():set_flags(wp_global_option),		-- Increment a value in the object cache.
	"replace"..clink.arg.new_parser():set_flags(wp_global_option),	-- Replace an existing value in the object cache.
	"set"..clink.arg.new_parser():set_flags(wp_global_option),		-- Set a value to the object cache.
	"type"..clink.arg.new_parser():set_flags(wp_global_option)		-- Attempts to determine which object cache is being used.
})
--------------------------------------------------------
-- wp cap
--------------------------------------------------------
local wp_cap_parser = clink.arg.new_parser()
wp_cap_parser:set_flags(wp_global_option)
wp_cap_parser:set_arguments({
	"add"..clink.arg.new_parser():set_flags(wp_global_option),		-- Add capabilities to a given role.
	"list"..clink.arg.new_parser():set_flags(wp_global_option),		-- List capabilities for a given role.
	"remove"..clink.arg.new_parser():set_flags(wp_global_option),	-- Remove capabilities from a given role.
})
--------------------------------------------------------
-- wp cli
--------------------------------------------------------
local wp_cli_parser = clink.arg.new_parser()
wp_cli_parser:set_flags(wp_global_option)
wp_cli_parser:set_arguments({
	"cmd-dump",			-- Dump the list of installed commands, as JSON.
	"completions",		-- Generate tab completion strings.
	"info",				-- Print various data about the CLI environment.
	"param-dump",		-- Dump the list of global parameters, as JSON.
	"version",			-- Print WP-CLI version.
})
--------------------------------------------------------
-- wp comment
--------------------------------------------------------
local wp_comment_parser = clink.arg.new_parser()
wp_comment_parser:set_flags(wp_global_option)
wp_comment_parser:set_arguments({
	"approve",
	"count",
	"create",
	"delete",
	"exists",
	"get",
	"list",
	"spam",
	"status",
	"trash",
	"unapprove",
	"unspam",
	"untrash",
	"update"
})
--------------------------------------------------------
-- wp core
--------------------------------------------------------
local wp_core_parser = clink.arg.new_parser()
wp_core_parser:set_flags(wp_global_option)
wp_core_parser:set_arguments({
	"config",
	"download",
	"init-tests",
	"install",
	"is-installed",
	"multisite-convert",
	"multisite-install",
	"update",
	"update-db",
	"version"
})
--------------------------------------------------------
-- wp db
--------------------------------------------------------
local wp_db_parser = clink.arg.new_parser()
wp_db_parser:set_flags(wp_global_option)
wp_db_parser:set_arguments({
	"cli",
	"create",
	"drop",
	"export",
	"import",
	"optimize",
	"query",
	"repair",
	"reset"
})
--------------------------------------------------------
-- wp eval
--------------------------------------------------------
local wp_eval_parser = clink.arg.new_parser()
wp_eval_parser:set_flags(wp_global_option)
--------------------------------------------------------
-- wp eval-file
--------------------------------------------------------
local wp_eval_file_parser = clink.arg.new_parser()
wp_eval_file_parser:set_flags(wp_global_option)
--------------------------------------------------------
-- wp export
--------------------------------------------------------
local wp_export_parser = clink.arg.new_parser()
wp_export_parser:set_flags(
	"--dir",
	"--skip_comments",
	"--file_item_count",
	"--verbose",
	"--start_date",
	"--end_date",
	"--post_type",
	"--post__in",
	"--author",
	"--category",
	"--post_status",
	wp_global_option
)
--------------------------------------------------------
-- wp import
--------------------------------------------------------
local wp_import_parser = clink.arg.new_parser()
wp_import_parser:set_flags(
	"--authors",
	"--skip",
	wp_global_option
)
--------------------------------------------------------
-- wp media
--------------------------------------------------------
local wp_media_parser = clink.arg.new_parser()
wp_media_parser:set_flags(wp_global_option)
wp_media_parser:set_arguments({
	"import",
	"regenerate"
})
--------------------------------------------------------
-- wp network-meta
--------------------------------------------------------
local wp_network_meta_parser = clink.arg.new_parser()
wp_network_meta_parser:set_flags(wp_global_option)
wp_network_meta_parser:set_arguments({
	"add",
	"delete",
	"get",
	"update"
})
--------------------------------------------------------
-- wp option
--------------------------------------------------------
local wp_option_parser = clink.arg.new_parser()
wp_option_parser:set_flags(wp_global_option)
wp_option_parser:set_arguments({
	"add",
	"delete",
	"get",
	"update"
})
--------------------------------------------------------
-- wp plugin
--------------------------------------------------------
local wp_plugin_parser = clink.arg.new_parser()
wp_plugin_parser:set_flags(wp_global_option)
wp_plugin_parser:set_arguments({
	"activate",
	"deactivate",
	"delete",
	"get",
	"install",
	"is-installed",
	"list",
	"path",
	"search",
	"status",
	"toggle",
	"uninstall",
	"update"
})
--------------------------------------------------------
-- wp post
--------------------------------------------------------
local wp_post_parser = clink.arg.new_parser()
wp_post_parser:set_flags(wp_global_option)
wp_post_parser:set_arguments({
	"create",
	"delete",
	"edit",
	"generate",
	"get",
	"list",
	"update"
})
--------------------------------------------------------
-- wp post-meta
--------------------------------------------------------
local wp_post_meta_parser = clink.arg.new_parser()
wp_post_meta_parser:set_flags(wp_global_option)
wp_post_meta_parser:set_arguments({
	"add",
	"delete",
	"get",
	"update"
})
--------------------------------------------------------
-- wp rewrite
--------------------------------------------------------
local wp_rewrite_parser = clink.arg.new_parser()
wp_rewrite_parser:set_flags(wp_global_option)
wp_rewrite_parser:set_arguments({
	"flush",
	"list",
	"structure"
})
--------------------------------------------------------
-- wp role
--------------------------------------------------------
local wp_role_parser = clink.arg.new_parser()
wp_role_parser:set_flags(wp_global_option)
wp_role_parser:set_arguments({
	"create",
	"delete",
	"exists",
	"list"
})
--------------------------------------------------------
-- wp scaffold
--------------------------------------------------------
local wp_scaffold_parser = clink.arg.new_parser()
wp_scaffold_parser:set_flags(wp_global_option)
wp_scaffold_parser:set_arguments({
	"_s",
	"child-theme",
	"plugin",
	"plugin-tests",
	"post-type",
	"taxonomy"
})
--------------------------------------------------------
-- wp search-replace
--------------------------------------------------------
local wp_search_replace_parser = clink.arg.new_parser()
wp_search_replace_parser:set_flags(
	"--network",
	"----skip-columns",
	"--dry-run",
	wp_global_option
)
--------------------------------------------------------
-- wp shell
--------------------------------------------------------
local wp_shell_parser = clink.arg.new_parser()
wp_shell_parser:set_flags("--basic", wp_global_option)
--------------------------------------------------------
-- wp site
--------------------------------------------------------
local wp_site_parser = clink.arg.new_parser()
wp_site_parser:set_flags(wp_global_option)
wp_site_parser:set_arguments({
	"create",
	"delete",
	"empty",
	"list"
})
--------------------------------------------------------
-- wp term
--------------------------------------------------------
local wp_term_parser = clink.arg.new_parser()
wp_term_parser:set_flags(wp_global_option)
wp_term_parser:set_arguments({
	"create",
	"delete",
	"get",
	"list",
	"update"
})
--------------------------------------------------------
-- wp theme
--------------------------------------------------------
local wp_theme_parser = clink.arg.new_parser()
wp_theme_parser:set_flags(wp_global_option)
wp_theme_parser:set_arguments({
	"activate",
	"delete",
	"get",
	"install",
	"is-installed",
	"list",
	"path",
	"search",
	"status",
	"update"
})
--------------------------------------------------------
-- wp transient
--------------------------------------------------------
local wp_transient_parser = clink.arg.new_parser()
wp_transient_parser:set_flags(wp_global_option)
wp_transient_parser:set_arguments({
	"delete",
	"get",
	"set",
	"type"
})
--------------------------------------------------------
-- wp user
--------------------------------------------------------
local wp_user_parser = clink.arg.new_parser()
wp_user_parser:set_flags(wp_global_option)
wp_user_parser:set_arguments({
	"add-cap",
	"add-role",
	"create",
	"delete",
	"generate",
	"get",
	"import-csv",
	"list",
	"list-caps",
	"remove-cap",
	"remove-role",
	"set-role",
	"update"
})
--------------------------------------------------------
-- wp user-meta
--------------------------------------------------------
local wp_user_meta_parser = clink.arg.new_parser()
wp_user_meta_parser:set_flags(wp_global_option)
wp_user_meta_parser:set_arguments({
	"user-meta",
	"add",
	"delete",
	"get",
	"update"
})
--------------------------------------------------------
-- wp help
--------------------------------------------------------
local wp_help_parser = clink.arg.new_parser()
wp_help_parser:set_arguments({
	"cache"..clink.arg.new_parser():set_arguments({wp_cache_parser:flatten_argument(1)}),
	"cap"..clink.arg.new_parser():set_arguments({wp_theme_parser:flatten_argument(1)}),
	"cli"..clink.arg.new_parser():set_arguments({wp_cap_parser:flatten_argument(1)}),
	"comment"..clink.arg.new_parser():set_arguments({wp_comment_parser:flatten_argument(1)}),
	"core"..clink.arg.new_parser():set_arguments({wp_core_parser:flatten_argument(1)}),
	"db"..clink.arg.new_parser():set_arguments({wp_db_parser:flatten_argument(1)}),
	"eval"..clink.arg.new_parser():set_arguments({wp_eval_parser:flatten_argument(1)}),
	"eval-file"..clink.arg.new_parser():set_arguments({wp_eval_file_parser:flatten_argument(1)}),
	"export"..clink.arg.new_parser():set_arguments({wp_export_parser:flatten_argument(1)}),
	"import"..clink.arg.new_parser():set_arguments({wp_import_parser:flatten_argument(1)}),
	"media"..clink.arg.new_parser():set_arguments({wp_media_parser:flatten_argument(1)}),
	"network-meta"..clink.arg.new_parser():set_arguments({wp_network_meta_parser:flatten_argument(1)}),
	"option"..clink.arg.new_parser():set_arguments({wp_option_parser:flatten_argument(1)}),
	"plugin"..clink.arg.new_parser():set_arguments({wp_plugin_parser:flatten_argument(1)}),
	"post"..clink.arg.new_parser():set_arguments({wp_post_parser:flatten_argument(1)}),
	"post-meta"..clink.arg.new_parser():set_arguments({wp_post_meta_parser:flatten_argument(1)}),
	"rewrite"..clink.arg.new_parser():set_arguments({wp_rewrite_parser:flatten_argument(1)}),
	"role"..clink.arg.new_parser():set_arguments({wp_role_parser:flatten_argument(1)}),
	"scaffold"..clink.arg.new_parser():set_arguments({wp_scaffold_parser:flatten_argument(1)}),
	"search-replace"..clink.arg.new_parser():set_arguments({wp_search_replace_parser:flatten_argument(1)}),
	"shell"..clink.arg.new_parser():set_arguments({wp_shell_parser:flatten_argument(1)}),
	"site"..clink.arg.new_parser():set_arguments({wp_site_parser:flatten_argument(1)}),
	"term"..clink.arg.new_parser():set_arguments({wp_term_parser:flatten_argument(1)}),
	"theme"..clink.arg.new_parser():set_arguments({wp_theme_parser:flatten_argument(1)}),
	"transient"..clink.arg.new_parser():set_arguments({wp_transient_parser:flatten_argument(1)}),
	"user"..clink.arg.new_parser():set_arguments({wp_user_parser:flatten_argument(1)}),
	"user-meta"..clink.arg.new_parser():set_arguments({wp_user_meta_parser:flatten_argument(1)})
})
--------------------------------------------------------
-- WP CLI
--------------------------------------------------------
local wp_parser = clink.arg.new_parser()
wp_parser:set_flags(wp_global_option)
wp_parser:set_arguments({
	"cache"..wp_cache_parser,					-- Manage the object cache.
	"cap"..wp_cap_parser,						-- Manage user capabilities.
	"cli"..wp_cli_parser,						-- Get information about WP-CLI itself.
	"comment"..wp_comment_parser,				-- Manage comments.
	"core"..wp_core_parser,						-- Download, install, update and otherwise manage WordPress proper.
	"db"..wp_db_parser,							-- Perform basic database operations.
	"eval"..wp_eval_parser,						-- Execute arbitrary PHP code after loading WordPress.
	"eval-file"..wp_eval_file_parser,			-- Load and execute a PHP file after loading WordPress.
	"export"..wp_export_parser,					-- Export content to a WXR file.
	"import"..wp_import_parser,					-- Import content from a WXR file.
	"media"..wp_media_parser,					-- Manage attachments.
	"network-meta"..wp_network_meta_parser,		-- Manage network custom fields.
	"option"..wp_option_parser,					-- Manage options.
	"plugin"..wp_plugin_parser,					-- Manage plugins.
	"post"..wp_post_parser,						-- Manage posts.
	"post-meta"..wp_post_meta_parser,			-- Manage post custom fields.
	"rewrite"..wp_rewrite_parser,				-- Manage rewrite rules.
	"role"..wp_role_parser,						-- Manage user roles.
	"scaffold"..wp_scaffold_parser,				-- Generate code for post types, taxonomies, etc.
	"search-replace"..wp_search_replace_parser,	-- Search/replace strings in the database.
	"shell"..wp_shell_parser,					-- Interactive PHP console.
	"site"..wp_site_parser,						-- Perform site-wide operations.
	"term"..wp_term_parser,						-- Manage terms.
	"theme"..wp_theme_parser,					-- Manage themes.
	"transient"..wp_transient_parser,			-- Manage transients.
	"user"..wp_user_parser,						-- Manage users.
	"user-meta"..wp_user_meta_parser,			-- Manage user custom fields.
	"help"..wp_help_parser,						-- Get help on a certain command.
})
clink.arg.register_parser("wp", wp_parser)
