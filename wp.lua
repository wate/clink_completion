--------------------------------------------------------
-- wp cache
--------------------------------------------------------
local wp_cache_parser = clink.arg.new_parser()
wp_cache_parser:set_flags("--help")
wp_cache_parser:set_arguments({
	"add"..clink.arg.new_parser():set_flags("--help"),
	"decr"..clink.arg.new_parser():set_flags("--help"),
	"delete"..clink.arg.new_parser():set_flags("--help"),
	"flush"..clink.arg.new_parser():set_flags("--help"),
	"get"..clink.arg.new_parser():set_flags("--help"),
	"incr"..clink.arg.new_parser():set_flags("--help"),
	"replace"..clink.arg.new_parser():set_flags("--help"),
	"set"..clink.arg.new_parser():set_flags("--help"),
	"type"..clink.arg.new_parser():set_flags("--help")
})
--------------------------------------------------------
-- wp cap
--------------------------------------------------------
local wp_cap_parser = clink.arg.new_parser()
wp_cap_parser:set_flags("--help")
wp_cap_parser:set_arguments({
	"add"..clink.arg.new_parser():set_flags("--help"),
	"list"..clink.arg.new_parser():set_flags("--help"),
	"remove"..clink.arg.new_parser():set_flags("--help"),
})
--------------------------------------------------------
-- wp cli
--------------------------------------------------------
local wp_cli_parser = clink.arg.new_parser()
wp_cli_parser:set_flags("--help")
wp_cli_parser:set_arguments({
	"cmd-dump"..clink.arg.new_parser():set_flags("--help"),
	"completions"..clink.arg.new_parser():set_flags("--help"),
	"info"..clink.arg.new_parser():set_flags("--help"),
	"param-dump"..clink.arg.new_parser():set_flags("--help"),
	"version"..clink.arg.new_parser():set_flags("--help"),
})
--------------------------------------------------------
-- wp comment
--------------------------------------------------------
local wp_comment_parser = clink.arg.new_parser()
wp_comment_parser:set_flags("--help")
wp_comment_parser:set_arguments({
	"approve"..clink.arg.new_parser():set_flags("--help"),
	"count"..clink.arg.new_parser():set_flags("--help"),
	"create"..clink.arg.new_parser():set_flags("--porcelain", "--help"),
	"delete"..clink.arg.new_parser():set_flags("--force", "--help"),
	"exists"..clink.arg.new_parser():set_flags("--help"),
	"get"..clink.arg.new_parser():set_flags("--field", "--format", "--help"),
	"list"..clink.arg.new_parser():set_flags("--field", "--fields", "--format", "--help"),
	"spam"..clink.arg.new_parser():set_flags("--help"),
	"status"..clink.arg.new_parser():set_flags("--help"),
	"trash"..clink.arg.new_parser():set_flags("--help"),
	"unapprove"..clink.arg.new_parser():set_flags("--help"),
	"unspam"..clink.arg.new_parser():set_flags("--help"),
	"untrash"..clink.arg.new_parser():set_flags("--help"),
	"update"..clink.arg.new_parser():set_flags("--help")
})
--------------------------------------------------------
-- wp core
--------------------------------------------------------
local wp_core_parser = clink.arg.new_parser()
wp_core_parser:set_flags("--help")
wp_core_parser:set_arguments({
	"config"..clink.arg.new_parser():set_flags("--dbname", "--dbuser", "--dbpass", "--dbhost", "--dbprefix", "--dbcharset", "--dbcollate", "--locale", "--extra-php", "--skip-salts", "--help"),
	"download"..clink.arg.new_parser():set_flags("--locale", "--version",  "--force", "--help"),
	"init-tests"..clink.arg.new_parser():set_flags("--help"),
	"install"..clink.arg.new_parser():set_flags("--url", "--title", "--admin_user", "--admin_password", "--admin_email", "--help"),
	"is-installed"..clink.arg.new_parser():set_flags("--help"),
	"multisite-convert"..clink.arg.new_parser():set_flags("--title", "--base", "--subdomains", "--help"),
	"multisite-install"..clink.arg.new_parser():set_flags("--url", "--base", "--subdomains", "--title", "--admin_user", "--admin_password", "--admin_email", "--help"),
	"update"..clink.arg.new_parser():set_flags("--version", "--force", "--help"),
	"update-db"..clink.arg.new_parser():set_flags("--help"),
	"version"..clink.arg.new_parser():set_flags("--extra", "--help")
})
--------------------------------------------------------
-- wp db
--------------------------------------------------------
local wp_db_parser = clink.arg.new_parser()
wp_db_parser:set_flags("--help")
wp_db_parser:set_arguments({
	"cli"..clink.arg.new_parser():set_flags("--help"),
	"create"..clink.arg.new_parser():set_flags("--help"),
	"drop"..clink.arg.new_parser():set_flags("--yes", "--help"),
	"export"..clink.arg.new_parser():set_flags("--help"),
	"import"..clink.arg.new_parser():set_flags("--help"),
	"optimize"..clink.arg.new_parser():set_flags("--help"),
	"query"..clink.arg.new_parser():set_flags("--help"),
	"repair"..clink.arg.new_parser():set_flags("--help"),
	"reset"..clink.arg.new_parser():set_flags("--yes", "--help")
})
--------------------------------------------------------
-- wp eval
--------------------------------------------------------
local wp_eval_parser = clink.arg.new_parser()
wp_eval_parser:set_flags("--help")
--------------------------------------------------------
-- wp eval-file
--------------------------------------------------------
local wp_eval_file_parser = clink.arg.new_parser()
wp_eval_file_parser:set_flags("--help")
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
	"--help"
)
--------------------------------------------------------
-- wp import
--------------------------------------------------------
local wp_import_parser = clink.arg.new_parser()
wp_import_parser:set_flags(
	"--authors",
	"--skip",
	"--help"
)
--------------------------------------------------------
-- wp media
--------------------------------------------------------
local wp_media_parser = clink.arg.new_parser()
wp_media_parser:set_flags("--help")
wp_media_parser:set_arguments({
	"import"..clink.arg.new_parser():set_flags("--post_id", "--title", "--caption", "--alt", "--desc", "--featured_image", "--help"),
	"regenerate"..clink.arg.new_parser():set_flags("--yes", "--help")
})
--------------------------------------------------------
-- wp network-meta
--------------------------------------------------------
local wp_network_meta_parser = clink.arg.new_parser()
wp_network_meta_parser:set_flags("--help")
wp_network_meta_parser:set_arguments({
	"add"..clink.arg.new_parser():set_flags("--format", "--help"),
	"delete"..clink.arg.new_parser():set_flags("--help"),
	"get"..clink.arg.new_parser():set_flags("--format", "--help"),
	"update"..clink.arg.new_parser():set_flags("--format", "--help")
})
--------------------------------------------------------
-- wp option
--------------------------------------------------------
local wp_option_parser = clink.arg.new_parser()
wp_option_parser:set_flags("--help")
wp_option_parser:set_arguments({
	"add"..clink.arg.new_parser():set_flags("--format", "--help"),
	"delete"..clink.arg.new_parser():set_flags("--help"),
	"get"..clink.arg.new_parser():set_flags("--format", "--help"),
	"update"..clink.arg.new_parser():set_flags("--format", "--help")
})
--------------------------------------------------------
-- wp plugin
--------------------------------------------------------
local wp_plugin_parser = clink.arg.new_parser()
wp_plugin_parser:set_flags("--help")
wp_plugin_parser:set_arguments({
	"activate"..clink.arg.new_parser():set_flags("--network", "--help"),
	"deactivate"..clink.arg.new_parser():set_flags("--network", "--help"),
	"delete"..clink.arg.new_parser():set_flags("--help"),
	"get"..clink.arg.new_parser():set_flags("--field", "--format", "--help"),
	"install"..clink.arg.new_parser():set_flags("--version", "--force", "--activate", "--help"),
	"is-installed"..clink.arg.new_parser():set_flags("--help"),
	"list"..clink.arg.new_parser():set_flags("--field", "--fields", "--format", "--help"),
	"path"..clink.arg.new_parser():set_flags("--dir", "--help"),
	"search"..clink.arg.new_parser():set_flags("--per-page", "--field", "--fields",  "--format", "--help"),
	"status"..clink.arg.new_parser():set_flags("--help"),
	"toggle"..clink.arg.new_parser():set_flags("--network", "--help"),
	"uninstall"..clink.arg.new_parser():set_flags("--no-delete", "--help"),
	"update"..clink.arg.new_parser():set_flags("--all", "--version", "--dry-run", "--help")
})
--------------------------------------------------------
-- wp post
--------------------------------------------------------
local wp_post_parser = clink.arg.new_parser()
wp_post_parser:set_flags("--help")
wp_post_parser:set_arguments({
	"create"..clink.arg.new_parser():set_flags("--edit", "--porcelain", "--help"),
	"delete"..clink.arg.new_parser():set_flags("--force", "--help"),
	"edit"..clink.arg.new_parser():set_flags("--help"),
	"generate"..clink.arg.new_parser():set_flags("--count", "--post_type", "--post_status", "--post_author", "--post_date", "--max_depth", "--help"),
	"get"..clink.arg.new_parser():set_flags("--field", "--format", "--help"),
	"list"..clink.arg.new_parser():set_flags("--field", "--fields", "--format", "--help"),
	"update"..clink.arg.new_parser():set_flags("--help")
})
--------------------------------------------------------
-- wp post-meta
--------------------------------------------------------
local wp_post_meta_parser = clink.arg.new_parser()
wp_post_meta_parser:set_flags("--help")
wp_post_meta_parser:set_arguments({
	"add"..clink.arg.new_parser():set_flags("--help"),
	"delete"..clink.arg.new_parser():set_flags("--help"),
	"get"..clink.arg.new_parser():set_flags("--format", "--help"),
	"update"..clink.arg.new_parser():set_flags("--format", "--help")
})
--------------------------------------------------------
-- wp rewrite
--------------------------------------------------------
local wp_rewrite_parser = clink.arg.new_parser()
wp_rewrite_parser:set_flags("--help")
wp_rewrite_parser:set_arguments({
	"flush"..clink.arg.new_parser():set_flags("--hard", "--help"),
	"list"..clink.arg.new_parser():set_flags("--match", "--source", "--format", "--help"),
	"structure"..clink.arg.new_parser():set_flags("--category-base", "--tag-base", "--hard", "--help")
})
--------------------------------------------------------
-- wp role
--------------------------------------------------------
local wp_role_parser = clink.arg.new_parser()
wp_role_parser:set_flags("--help")
wp_role_parser:set_arguments({
	"create"..clink.arg.new_parser():set_flags("--help"),
	"delete"..clink.arg.new_parser():set_flags("--help"),
	"exists"..clink.arg.new_parser():set_flags("--help"),
	"list"..clink.arg.new_parser():set_flags("--fields", "--format", "--help")
})
--------------------------------------------------------
-- wp scaffold
--------------------------------------------------------
local wp_scaffold_parser = clink.arg.new_parser()
wp_scaffold_parser:set_flags("--help")
wp_scaffold_parser:set_arguments({
	"_s"..clink.arg.new_parser():set_flags("--theme_name", "--author", "--author_uri", "--activate", "--help"),
	"child-theme"..clink.arg.new_parser():set_flags("--parent_theme", "--theme_name", "--author", "--author_uri", "--theme_uri", "--activate", "--help"),
	"plugin"..clink.arg.new_parser():set_flags("--plugin_name", "--activate", "--help"),
	"plugin-tests"..clink.arg.new_parser():set_flags("--help"),
	"post-type"..clink.arg.new_parser():set_flags("--label", "--textdomain", "--theme", "--plugin", "--raw", "--help"),
	"taxonomy"..clink.arg.new_parser():set_flags("--post_types", "--label", "--textdomain", "--theme", "--plugin", "--raw", "--help")
})
--------------------------------------------------------
-- wp search-replace
--------------------------------------------------------
local wp_search_replace_parser = clink.arg.new_parser()
wp_search_replace_parser:set_flags(
	"--network",
	"--skip-columns",
	"--dry-run",
	"--help"
)
--------------------------------------------------------
-- wp shell
--------------------------------------------------------
local wp_shell_parser = clink.arg.new_parser()
wp_shell_parser:set_flags("--basic", "--help")
--------------------------------------------------------
-- wp site
--------------------------------------------------------
local wp_site_parser = clink.arg.new_parser()
wp_site_parser:set_flags("--help")
wp_site_parser:set_arguments({
	"create"..clink.arg.new_parser():set_flags("--slug", "--title", "--email", "--network_id", "--private", "--porcelain", "--help"),
	"delete"..clink.arg.new_parser():set_flags("--slug", "--yes", "--keep-tables", "--help"),
	"empty"..clink.arg.new_parser():set_flags("--yes", "--help"),
	"list"..clink.arg.new_parser():set_flags("--network", "--field", "--fields", "--format", "--help")
})
--------------------------------------------------------
-- wp term
--------------------------------------------------------
local wp_term_parser = clink.arg.new_parser()
wp_term_parser:set_flags("--help")
wp_term_parser:set_arguments({
	"create"..clink.arg.new_parser():set_flags("--slug", "--description", "--parent", "--porcelain", "--help"),
	"delete"..clink.arg.new_parser():set_flags("--help"),
	"get"..clink.arg.new_parser():set_flags("--field", "--format", "--help"),
	"list"..clink.arg.new_parser():set_flags("--field", "--fields", "--format", "--help"),
	"update"..clink.arg.new_parser():set_flags("--name", "--slug", "--description", "--parent", "--help")
})
--------------------------------------------------------
-- wp theme
--------------------------------------------------------
local wp_theme_parser = clink.arg.new_parser()
wp_theme_parser:set_flags("--help")
wp_theme_parser:set_arguments({
	"activate"..clink.arg.new_parser():set_flags("--help"),
	"delete"..clink.arg.new_parser():set_flags("--help"),
	"get"..clink.arg.new_parser():set_flags("--field", "--format", "--help"),
	"install"..clink.arg.new_parser():set_flags("--version", "--force", "--activate", "--help"),
	"is-installed"..clink.arg.new_parser():set_flags("--help"),
	"list"..clink.arg.new_parser():set_flags("--field", "--fields", "--format", "--help"),
	"path"..clink.arg.new_parser():set_flags("--dir", "--help"),
	"search"..clink.arg.new_parser():set_flags("--per-page", "--field", "--fields",  "--format", "--help"),
	"status"..clink.arg.new_parser():set_flags("--help"),
	"update"..clink.arg.new_parser():set_flags("--all", "--version", "--dry-run", "--help")
})
--------------------------------------------------------
-- wp transient
--------------------------------------------------------
local wp_transient_parser = clink.arg.new_parser()
wp_transient_parser:set_flags("--help")
wp_transient_parser:set_arguments({
	"delete"..clink.arg.new_parser():set_flags("--help"),
	"get"..clink.arg.new_parser():set_flags("--json", "--help"),
	"set"..clink.arg.new_parser():set_flags("--help"),
	"type"..clink.arg.new_parser():set_flags("--help")
})
--------------------------------------------------------
-- wp user
--------------------------------------------------------
local wp_user_parser = clink.arg.new_parser()
wp_user_parser:set_flags("--help")
wp_user_parser:set_arguments({
	"add-cap"..clink.arg.new_parser():set_flags("--help"),
	"add-role"..clink.arg.new_parser():set_flags("--help"),
	"create"..clink.arg.new_parser():set_flags("--role", "--user_pass", "--user_registered", "--display_name", "--porcelain", "--help"),
	"delete"..clink.arg.new_parser():set_flags("--reassign", "--help"),
	"generate"..clink.arg.new_parser():set_flags("--count", "--role", "--help"),
	"get"..clink.arg.new_parser():set_flags("--field", "--format", "--help"),
	"import-csv"..clink.arg.new_parser():set_flags("--help"),
	"list"..clink.arg.new_parser():set_flags("--role", "--field", "--fields", "--format", "--help"),
	"list-caps"..clink.arg.new_parser():set_flags("--help"),
	"remove-cap"..clink.arg.new_parser():set_flags("--help"),
	"remove-role"..clink.arg.new_parser():set_flags("--help"),
	"set-role"..clink.arg.new_parser():set_flags("--help"),
	"update"..clink.arg.new_parser():set_flags("--help")
})
--------------------------------------------------------
-- wp user-meta
--------------------------------------------------------
local wp_user_meta_parser = clink.arg.new_parser()
wp_user_meta_parser:set_flags("--help")
wp_user_meta_parser:set_arguments({
	"add"..clink.arg.new_parser():set_flags("--format", "--help"),
	"delete"..clink.arg.new_parser():set_flags("--help"),
	"get"..clink.arg.new_parser():set_flags("--help"),
	"update"..clink.arg.new_parser():set_flags("--format", "--help")
})
--------------------------------------------------------
-- wp help
--------------------------------------------------------
local wp_help_parser = clink.arg.new_parser()
wp_help_parser:set_flags("--help")
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
wp_parser:set_flags(
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
)
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
