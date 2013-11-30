--------------------------------------------------------
-- Git init
--------------------------------------------------------
local git_init_parser = clink.arg.new_parser()
git_init_parser:set_flags(
	"--quiet", "-q",
	"--bare",
	"--template",
	"--separate-git-dir",
	"--shared"
)
--------------------------------------------------------
-- Git clone
--------------------------------------------------------
local git_clone_parser = clink.arg.new_parser()
git_clone_parser:set_flags(
	"--local", "-l",
	"--shared", "-s",
	"--reference",
	"--quiet", "-q",
	"--verbose", "-v",
	"--no-hardlinks",
	"--progress",
	"--no-checkout", "-n",
	"--bare",
	"--mirror",
	"--origin", "-o",
	"--branch", "-b",
	"--upload-pack", "-u",
	"--template",
	"--config", "-c",
	"--depth",
	"--single-branch", "--no-single-branch",
	"--recursive", "--recurse-submodules",
	"--separate-git-dir"
)
--------------------------------------------------------
-- Git add
--------------------------------------------------------
local git_add_parser = clink.arg.new_parser()
git_add_parser:set_flags(
	"--dry-run", "-n",
	"--verbose", "-v",
	"--force", "-f",
	"--interactive", "-i",
	"--patch", "-p",
	"--edit", "-e",
	"--update", "-u",
	"--all", "-A",
	"--no-all",
	"--ignore-removal",
	"--no-ignore-removal",
	"--intent-to-add", "-N",
	"--refresh",
	"--ignore-errors",
	"--ignore-missing"
)
--------------------------------------------------------
-- Git commit
--------------------------------------------------------
local git_commit_parser = clink.arg.new_parser()
git_commit_parser:set_flags(
	"--all", "-a",
	"--patch", "-p",
	"--reuse-message", "-C",
	"--reedit-message", "-c",
	"--fixup",
	"--squash",
	"--reset-author",
	"--squash",
	"--short",
	"--branch",
	"--porcelain",
	"--long",
	"--null", "-z",
	"--file", "-F",
	"--author",
	"--date",
	"--message", "-m",
	"--signoff", "-s",
	"--no-verify", "-n",
	"--allow-empty",
	"--allow-empty-message",
	"--cleanup"..clink.arg.new_parser():set_arguments({"strip", "whitespace", "verbatim", "default"}),
	"--edit", "-e", "--no-edit",
	"--amend",
	"--no-post-rewrite",
	"--include", "-i",
	"--only", "-o",
	"--untracked-files"..clink.arg.new_parser():set_arguments({"no", "normal ", "all"}), "-u"..clink.arg.new_parser():set_arguments({"no", "normal ", "all"}),
	"--verbose", "-v",
	"--quiet", "-q",
	"--dry-run",
	"--no-status",
	"--gpg-sign", "-S"
)
--------------------------------------------------------
-- Git push
--------------------------------------------------------
local git_push_parser = clink.arg.new_parser()
git_push_parser:set_flags(
	"--all",
	"--prune",
	"--mirror",
	"--dry-run", "-n",
	"--porcelain",
	"--delete",
	"--tags",
	"--follow-tags",
	"--receive-pack",
	"--exec",
	"--force", "-f",
	"--repo",
	"--set-upstream", "-u",
	"--thin", "--no-thin",
	"--quiet", "-q",
	"--verbose", "-v",
	"--progress",
	"--recurse-submodules",
	"--verify", "--no-verify"
)
--------------------------------------------------------
-- Git fetch
--------------------------------------------------------
local git_fetch_flags = {
	"--all",
	"--append", "-a",
	"--depth",
	"--unshallow",
	"--dry-run",
	"--force", "-f",
	"--keep", "-k",
	"--multiple",
	"--prune", "-p",
	"--no-tags", "-n",
	"--tags", "-t",
	"--recurse-submodules",
	"--no-recurse-submodules",
	"--submodule-prefix",
	"--recurse-submodules-default",
	"--update-head-ok", "-u",
	"--upload-pack",
	"--quiet", "-q",
	"--verbose", "-v",
	"--progress"
}
local git_fetch_parser = clink.arg.new_parser()
git_fetch_parser:set_flags(git_fetch_flags)
--------------------------------------------------------
-- Git merge
--------------------------------------------------------
local git_merge_flags = {
	"--commit", "--no-commit",
	"--edit", "-e", "-no-edit",
	"--ff", "--no-ff", "-ff-only",
	"--log", "--no-log",
	"--stat", "-n", "-no-stat",
	"--squash", "--no-squash",
	"--strategy", "-s",
	"--strategy-option", "-X",
	"--verify-signatures", "--no-verify-signatures",
	"--summary", "--no-summary",
	"--quiet", "-q",
	"--verbose", "-v",
	"--progress", "--no-progress",
	"--rerere-autoupdate", "--no-rerere-autoupdate",
	"-m", "--abort"
}
local git_merge_parser = clink.arg.new_parser()
git_merge_parser:set_flags(git_merge_flags)

--------------------------------------------------------
-- Git pull
--------------------------------------------------------
local git_pull_parser = clink.arg.new_parser()
git_pull_parser:set_flags(git_fetch_flags, git_merge_flags)
--------------------------------------------------------
-- Git branch
--------------------------------------------------------
local git_branch_parser = clink.arg.new_parser()
git_branch_parser:set_flags(
	"--delete", "-d",
	"-D",
	"--create-reflog", "-l",
	"--force", "-f",
	"--move", "-m",
	"-M",
	"--color", "--no-color",
	"--column", "--no-column",
	"--remotes", "-r",
	"--all", "-a",
	"--list",
	"--verbose", "-v", "-vv",
	"--quiet", "-q",
	"--abbrev", "--no-abbrev",
	"--track", "-t", "--no-track",
	"--set-upstream",
	"--set-upstream-to", "-u", "--unset-upstream",
	"--edit-description",
	"--contains",
	"--merged", "--no-merged"
)
--------------------------------------------------------
-- Git stash
--------------------------------------------------------
local git_stash_parser = clink.arg.new_parser()
git_stash_parser:set_arguments({
	"list",
	"show",
	"drop",
	"pop",
	"apply",
	"branch",
	"save",
	"clear"
})
--------------------------------------------------------
-- Git diff
--------------------------------------------------------
local git_diff_parser = clink.arg.new_parser()
git_diff_parser:set_flags(
	"--patch", "-p", "-u",
	"--no-patch", "-s",
	"--unified", "-U",
	"--raw",
	"--patch-with-raw",
	"--minimal",
	"--patience",
	"--histogram",
	"--diff-algorithm",
	"--stat",
	"--numstat",
	"--shortstat",
	"--dirstat",
	"--summary",
	"--patch-with-stat",
	"-z",
	"--name-only",
	"--name-status",
	"--submodule",
	"--color", "--no-color",
	"--word-diff",
	"--word-diff-regex",
	"--color-words",
	"--no-renames",
	"--check",
	"--full-index",
	"--binary",
	"--abbrev",
	"--break-rewrites", "-B",
	"--find-renames", "-M",
	"--find-copies", "-C",
	"--find-copies-harder",
	"--irreversible-delete", "-D",
	"-l",
	"--diff-filter",
	"-S",
	"-G",
	"--pickaxe-all",
	"--pickaxe-regex",
	"-O",
	"-R",
	"--relative",
	"--text", "-a",
	"--ignore-space-at-eol",
	"--ignore-space-change", "-b",
	"--ignore-all-space", "-w",
	"--ignore-blank-lines",
	"--inter-hunk-context",
	"--function-context", "-W",
	"--exit-code",
	"--quiet",
	"--ext-diff", "--no-ext-diff",
	"--textconv", "--no-textconv",
	"--ignore-submodules",
	"--src-prefix",
	"--dst-prefix",
	"--no-prefix"
)
--------------------------------------------------------
-- Git log
--------------------------------------------------------
local git_log_parser = clink.arg.new_parser()
git_log_parser:set_flags()
--------------------------------------------------------
-- Git rebase
--------------------------------------------------------
local git_rebase_parser = clink.arg.new_parser()
git_rebase_parser:set_flags()
--------------------------------------------------------
-- Git reset
--------------------------------------------------------
local git_reset_parser = clink.arg.new_parser()
git_reset_parser:set_flags()
--------------------------------------------------------
-- Git revert
--------------------------------------------------------
local git_revert_parser = clink.arg.new_parser()
git_revert_parser:set_flags()
--------------------------------------------------------
-- Git status
--------------------------------------------------------
local git_status_parser = clink.arg.new_parser()
git_status_parser:set_flags()
--------------------------------------------------------
-- Git remote
--------------------------------------------------------
local git_remote_parser = clink.arg.new_parser()
git_remote_parser:set_arguments({
	"add",
	"rename",
	"remove",
	"set-head",
	"show",
	"prune",
	"update",
	"set-branches",
	"set-url"
})
--------------------------------------------------------
-- Git submodule
--------------------------------------------------------
local git_submodule_parser = clink.arg.new_parser()
git_submodule_parser:set_arguments({
	"add",
	"status",
	"init",
	"deinit",
	"update",
	"summary",
	"foreach",
	"sync",
})
--------------------------------------------------------
-- Git svn
--------------------------------------------------------
local git_svn_parser = clink.arg.new_parser()
git_svn_parser:set_arguments({
	"blame",
	"branch",
	"clone",
	"commit-diff",
	"create-ignore",
	"dcommit",
	"fetch",
	"find-rev",
	"gc",
	"info",
	"init",
	"log",
	"migrate",
	"mkdirs",
	"propget",
	"proplist",
	"rebase",
	"reset",
	"set-tree",
	"show-externals",
	"show-ignore",
	"tag"
})
-- local git_am_parser = clink.arg.new_parser()
-- local git_archive_parser = clink.arg.new_parser()
-- local git_bundle_parser = clink.arg.new_parser()
-- local git_checkout_parser = clink.arg.new_parser()
-- local git_cherry_pick_parser = clink.arg.new_parser()
-- local git_citool_parser = clink.arg.new_parser()
-- local git_clean_parser = clink.arg.new_parser()
-- local git_describe_parser = clink.arg.new_parser()
-- local git_format_patch_parser = clink.arg.new_parser()
-- local git_gc_parser = clink.arg.new_parser()
-- local git_grep_parser = clink.arg.new_parser()
-- local git_gui_parser = clink.arg.new_parser()
-- local git_mv_parser = clink.arg.new_parser()
-- local git_rm_parser = clink.arg.new_parser()
-- local git_shortlog_parser = clink.arg.new_parser()
-- local git_show_parser = clink.arg.new_parser()
-- local git_tag_parser = clink.arg.new_parser()
-- local git_config_parser = clink.arg.new_parser()
-- local git_fast_export_parser = clink.arg.new_parser()
-- local git_fast_import_parser = clink.arg.new_parser()
-- local git_filter_branch_parser = clink.arg.new_parser()
-- local git_lost_found_parser = clink.arg.new_parser()
-- local git_mergetool_parser = clink.arg.new_parser()
-- local git_pack_refs_parser = clink.arg.new_parser()
-- local git_prune_parser = clink.arg.new_parser()
-- local git_reflog_parser = clink.arg.new_parser()
-- local git_relink_parser = clink.arg.new_parser()
-- local git_repack_parser = clink.arg.new_parser()
-- local git_replace_parser = clink.arg.new_parser()
-- local git_repo_config_parser = clink.arg.new_parser()
-- local git_annotate_parser = clink.arg.new_parser()
-- local git_blame_parser = clink.arg.new_parser()
-- local git_cherry_parser = clink.arg.new_parser()
-- local git_count_objects_parser = clink.arg.new_parser()
-- local git_difftool_parser = clink.arg.new_parser()
-- local git_fsck_parser = clink.arg.new_parser()
-- local git_get_tar_commit_id_parser = clink.arg.new_parser()
-- local git_instaweb_parser = clink.arg.new_parser()
-- local git_merge_tree_parser = clink.arg.new_parser()
-- local git_rev_parse_parser = clink.arg.new_parser()
-- local git_show_branch_parser = clink.arg.new_parser()
-- local git_verify_tag_parser = clink.arg.new_parser()
-- local git_whatchanged_parser = clink.arg.new_parser()
--------------------------------------------------------
-- Git notes
--------------------------------------------------------
local git_notes_parser = clink.arg.new_parser()
git_notes_parser:set_arguments({
	"list",
	"add",
	"copy",
	"append",
	"edit",
	"show",
	"merge",
	"remove",
	"prune",
	"get-ref"
})
--------------------------------------------------------
-- Git rerere
--------------------------------------------------------
local git_rerere_parser = clink.arg.new_parser()
git_rerere_parser:set_arguments({
	"clear",
	"forget",
	"status",
	"remaining",
	"diff",
	"gc"
})
--------------------------------------------------------
-- Git bisect
--------------------------------------------------------
local git_bisect_parser = clink.arg.new_parser()
git_bisect_parser:set_arguments({
	"help",
	"start",
	"bad",
	"good",
	"skip",
	"next",
	"reset",
	"visualize",
	"replay",
	"log",
	"run"
})
--------------------------------------------------------
-- Git help
--------------------------------------------------------
local git_help_parser = clink.arg.new_parser()
git_help_parser:set_arguments({
	"add",
	"am",
	"archive",
	"bisect",
	"branch",
	"bundle",
	"checkout",
	"cherry-pick",
	"citool",
	"clean",
	"clone",
	"commit",
	"describe",
	"diff",
	"fetch",
	"format-patch",
	"gc",
	"grep",
	"gui",
	"init",
	"log",
	"merge",
	"mv",
	"notes",
	"pull",
	"push",
	"rebase",
	"reset",
	"revert",
	"rm",
	"shortlog",
	"show",
	"stash",
	"status",
	"submodule",
	"tag",
	"config",
	"fast-export",
	"fast-import",
	"filter-branch",
	"lost-found",
	"mergetool",
	"pack-refs",
	"prune",
	"reflog",
	"relink",
	"remote",
	"repack",
	"replace",
	"repo-config",
	"annotate",
	"blame",
	"cherry",
	"count-objects",
	"difftool",
	"fsck",
	"get-tar-commit-id",
	"instaweb",
	"merge-tree",
	"rerere",
	"rev-parse",
	"show-branch",
	"verify-tag",
	"whatchanged",
	"svn"
})
--------------------------------------------------------
-- Git Flow
--------------------------------------------------------
---------------------
-- Git flow feature
---------------------
local git_flow_feature_parser = clink.arg.new_parser()
git_flow_feature_parser:set_flags("-v")
git_flow_feature_parser:set_arguments({
	"list"..clink.arg.new_parser():set_flags("-v"),
	"start"..clink.arg.new_parser():set_flags("-F"),
	"finish"..clink.arg.new_parser():set_flags("-F", "-r", "-k", "-D", "-S"),
	"publish",
	"track",
	"diff",
	"rebase"..clink.arg.new_parser():set_flags("-i"),
	"checkout",
	"pull"
})
---------------------
-- Git flow release
---------------------
local git_flow_release_parser = clink.arg.new_parser()
git_flow_release_parser:set_flags("-v")
git_flow_release_parser:set_arguments({
	"list"..clink.arg.new_parser():set_flags("-v"),
	"start"..clink.arg.new_parser():set_flags("-F"),
	"finish"..clink.arg.new_parser():set_flags("-F", "-s", "-u", "-m", "-p", "-k", "-n"),
	"publish",
	"track"
})
---------------------
-- Git flow hotfix
---------------------
local git_flow_hotfix_parser = clink.arg.new_parser()
git_flow_hotfix_parser:set_flags("-v")
git_flow_hotfix_parser:set_arguments({
	"list"..clink.arg.new_parser():set_flags("-v"),
	"start"..clink.arg.new_parser():set_flags("-F"),
	"finish"..clink.arg.new_parser():set_flags("-F", "-s", "-u", "-m", "-p", "-k", "-n")
})
---------------------
-- Git flow support
---------------------
local git_flow_support_parser = clink.arg.new_parser()
git_flow_support_parser:set_flags("-v")
git_flow_support_parser:set_arguments({
	"list"..clink.arg.new_parser():set_flags("-v"),
	"start"..clink.arg.new_parser():set_flags("-F")
})
---------------------
local git_flow_parser = clink.arg.new_parser()
git_flow_parser:set_arguments({
	"init"..clink.arg.new_parser():set_flags("-d", "-f"),
	"feature"..git_flow_feature_parser,
	"release"..git_flow_release_parser,
	"hotfix"..git_flow_hotfix_parser,
	"support"..git_flow_support_parser,
})
--------------------------------------------------------
-- Git
--------------------------------------------------------
local git_parser = clink.arg.new_parser()
git_parser:set_arguments({
	"add"..git_add_parser,
	"am",
	"archive",
	"bisect"..git_bisect_parser,
	"branch"..git_branch_parser,
	"bundle",
	"checkout",
	"cherry-pick",
	"citool",
	"clean",
	"clone"..git_clone_parser,
	"commit"..git_commit_parser,
	"describe",
	"diff",
	"fetch"..git_fetch_parser,
	"format-patch",
	"gc",
	"grep",
	"gui",
	"init"..git_init_parser,
	"log",
	"merge"..git_merge_parser,
	"mv",
	"notes"..git_notes_parser,
	"pull"..git_pull_parser,
	"push"..git_push_parser,
	"rebase",
	"reset",
	"revert",
	"rm",
	"shortlog",
	"show",
	"stash"..git_stash_parser,
	"status",
	"submodule"..git_submodule_parser,
	"tag",
	"config",
	"fast-export",
	"fast-import",
	"filter-branch",
	"lost-found",
	"mergetool",
	"pack-refs",
	"prune",
	"reflog",
	"relink",
	"remote"..git_remote_parser,
	"repack",
	"replace",
	"repo-config",
	"annotate",
	"blame",
	"cherry",
	"count-objects",
	"difftool",
	"fsck",
	"get-tar-commit-id",
	"instaweb",
	"merge-tree",
	"rerere"..git_rerere_parser,
	"rev-parse",
	"show-branch",
	"verify-tag",
	"whatchanged",
	"svn"..git_svn_parser,
	"help"..git_help_parser,
	"flow"..git_flow_parser
})
clink.arg.register_parser("git", git_parser)
