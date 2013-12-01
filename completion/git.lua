--------------------------------------------------------
-- Git extensions
--------------------------------------------------------
GitFlow = true
HubFlow = true
Legit = false
--------------------------------------------------------
-- git init
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
-- git clone
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
-- git add
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
-- git commit
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
-- git push
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
-- git fetch
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
-- git merge
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
-- git pull
--------------------------------------------------------
local git_pull_parser = clink.arg.new_parser()
git_pull_parser:set_flags(git_fetch_flags, git_merge_flags)
--------------------------------------------------------
-- git branch
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
-- git stash
--------------------------------------------------------
local git_stash_parser = clink.arg.new_parser()
git_stash_parser:set_arguments({
	"list",
	"show",
	"drop"..clink.arg.new_parser():set_flags("--quiet", "-q"),
	"pop"..clink.arg.new_parser():set_flags("--quiet", "-q", "--index"),
	"apply"..clink.arg.new_parser():set_flags("--quiet", "-q", "--index"),
	"branch",
	"save"..clink.arg.new_parser():set_flags("--patch", "-p", "--no-keep-index", "--no-keep-index", "--include-untracked", "-u", "--all", "-a", "--quiet", "-q"),
	"clear",
	"create",
	"store"..clink.arg.new_parser():set_flags("--message", "-m", "--quiet", "-q")
})
--------------------------------------------------------
-- git diff
--------------------------------------------------------
local git_diff_flags = {
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
}
local git_diff_parser = clink.arg.new_parser()
git_diff_parser:set_flags(git_diff_flags)
--------------------------------------------------------
-- git log
--------------------------------------------------------
local git_log_flags = {
	"--follow",
	"--no-decorate", "--decorate",
	"--source",
	"--use-mailmap",
	"--full-diff",
	"--log-size",
	"-L",
	-- Commit Limiting
	"-n",
	"--max-count",
	"--skip",
	"--since",
	"--after",
	"--until",
	"--before",
	"--author",
	"--committer",
	"--grep-reflog",
	"--grep",
	"--all-match",
	"--regexp-ignore-case", "-i",
	"--basic-regexp",
	"--extended-regexp", "-E",
	"--fixed-strings", "-F",
	"--perl-regexp",
	"--remove-empty",
	"--merges", "--no-merges",
	"--min-parents",
	"--max-parents",
	"--no-min-parents",
	"--no-max-parents",
	"--first-parent",
	"--not",
	"--all",
	"--branches",
	"--tags",
	"--remotes",
	"--glob",
	"--ignore-missing",
	"--bisect",
	"--stdin",
	"--cherry-mark",
	"--cherry-pick",
	"--left-only", "--right-only",
	"--cherry",
	"--walk-reflogs", "-g",
	"--merge",
	"--boundary",
	-- History Simplification
	"--simplify-by-decoration",
	"--full-history",
	"--dense",
	"--sparse",
	"--simplify-merges",
	"--ancestry-path",
	"--date-order",
	"--author-date-order",
	"--topo-order",
	"--reverse",
	-- Object Traversal
	"--objects",
	"--objects-edge",
	"--unpacked",
	"--no-walk",
	"--do-walk",
	-- Commit Formatting
	"--pretty",
	"--format",
	"--abbrev-commit",
	"--no-abbrev-commit",
	"--oneline",
	"--encoding",
	"--notes", "--no-notes",
	"--show-notes",
	"--standard-notes", "--no-standard-notes",
	"--show-signature",
	"--relative-date",
	"--date",
	"--parents",
	"--children",
	"--left-right",
	"--graph",
	-- Diff Formatting
	"-c",
	"--cc",
	"-m",
	"-r",
	"-t"
}
local git_log_parser = clink.arg.new_parser()
git_log_parser:set_flags(git_log_flags, git_diff_flags)
--------------------------------------------------------
-- git rebase
--------------------------------------------------------
local git_rebase_parser = clink.arg.new_parser()
git_rebase_parser:set_flags(
	"--onto",
	"--continue",
	"--abort",
	"--keep-empty",
	"--skip",
	"--edit-todo",
	"--merge", "-m",
	"--strategy", "-s",
	"--strategy-option", "-X",
	"--quiet", "-q",
	"--verbose", "-v",
	"--stat",
	"--no-stat", "-n",
	"--verify", "--no-verify",
	"-C",
	"--force-rebase", "-f",
	"--ignore-whitespace",
	"--whitespace",
	"--committer-date-is-author-date",
	"--ignore-date",
	"--interactive", "-i",
	"--preserve-merges", "-p",
	"--exec", "-x",
	"--root",
	"--autosquash", "--no-autosquash",
	"--autostash", "--no-autostash",
	"--no-ff"
)
--------------------------------------------------------
-- git reset
--------------------------------------------------------
local git_reset_parser = clink.arg.new_parser()
git_reset_parser:set_flags(
	"--soft",
	"--mixed",
	"--hard",
	"--merge",
	"--keep",
	"--quiet", "-q"
)
--------------------------------------------------------
-- git revert
--------------------------------------------------------
local git_revert_parser = clink.arg.new_parser()
git_revert_parser:set_flags(
	"--edit", "-e", "--no-edit",
	"--mainline", "-m",
	"--no-commit", "-n",
	"--signoff", "-s",
	"--strategy",
	"--strategy-option", "-X",
	"--continue",
	"--quit",
	"--abort"
)
--------------------------------------------------------
-- git status
--------------------------------------------------------
local git_status_parser = clink.arg.new_parser()
git_status_parser:set_flags(
	"--short", "-s",
	"--branch", "-b",
	"--porcelain",
	"--long",
	"--untracked-files", "-u",
	"--ignore-submodules",
	"--ignored",
	"-z",
	"--column", "--no-column"
)
--------------------------------------------------------
-- git checkout
--------------------------------------------------------
local git_checkout_parser = clink.arg.new_parser()
git_checkout_parser:set_flags(
	"--quiet", "-q",
	"--force", "-f",
	"--ours",
	"--theirs",
	"-b",
	"-B",
	"--track", "-t", "--no-track",
	"-l",
	"--detach",
	"--orphan",
	"--ignore-skip-worktree-bits",
	"--merge", "-m",
	"--conflict",
	"--patch", "-p"
)



--------------------------------------------------------
-- git remote
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
-- git submodule
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
-- git svn
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
--------------------------------------------------------
-- git mv
--------------------------------------------------------
local git_mv_parser = clink.arg.new_parser()
git_mv_parser:set_flags(
	"--force", "-f",
	"-k",
	"--dry-run", "-n",
	"--verbose", "-v"
)
--------------------------------------------------------
-- git rm
--------------------------------------------------------
local git_rm_parser = clink.arg.new_parser()
git_rm_parser:set_flags(
	"--force", "-f",
	"--dry-run", "-n",
	"-r",
	"--cached",
	"--ignore-unmatch",
	"--quiet", "-q"
)
--------------------------------------------------------
-- git gc
--------------------------------------------------------
local git_gc_parser = clink.arg.new_parser()
git_gc_parser:set_flags(
	"--aggressive",
	"--auto",
	"--prune", "--no-prune",
	"--quiet"
)
--------------------------------------------------------
-- git am
--------------------------------------------------------
local git_am_parser = clink.arg.new_parser()
git_am_parser:set_flags(
	"--signoff", "-s",
	"--keep", "-k",
	"--keep-non-patch",
	"--keep-cr", "--no-keep-cr",
	"--scissors", "-c", "--no-scissors",
	"--quiet", "-q",
	"--utf8", "-u", "--no-utf8",
	"--3way", "-3",
	"--ignore-date",
	"--ignore-space-change",
	"--ignore-whitespace",
	"--whitespace",
	"-C",
	"-p",
	"--directory",
	"--exclude",
	"--include",
	"--reject",
	"--interactive", "-i",
	"--committer-date-is-author-date",
	"--ignore-date",
	"--skip",
	"--continue",
	"--resolved", "-r",
	"--resolvemsg",
	"--abort"
)
--------------------------------------------------------
-- git tag
--------------------------------------------------------
local git_tag_parser = clink.arg.new_parser()
git_tag_parser:set_flags(
	"--annotate", "-a",
	"--sign", "-s",
	"--local-user", "-u",
	"--force", "-f",
	"--delete", "-d",
	"--verify", "-v",
	"-n",
	"--list", "-l",
	"--column", "--no-column",
	"--contains",
	"--points-at",
	"--message", "-m",
	"--file", "-F",
	"--cleanup"
)
--------------------------------------------------------
-- git config
--------------------------------------------------------
local git_config_parser = clink.arg.new_parser()
git_config_parser:set_flags(
	"--replace-all",
	"--add",
	"--get",
	"--get-all",
	"--get-regexp",
	"--global",
	"--system",
	"--local",
	"--file", "-f",
	"--blob",
	"--remove-section",
	"--rename-section",
	"--unset",
	"--unset-all",
	"--list", "-l",
	"--bool",
	"--int",
	"--bool-or-int",
	"--path",
	"--null", "-z",
	"--get-colorbool",
	"--get-color",
	"--edit", "-e",
	"--includes", "--no-includes"
)
--------------------------------------------------------
-- git cherry-pick
--------------------------------------------------------
local git_cherry_pick_parser = clink.arg.new_parser()
git_cherry_pick_parser:set_flags(
	"--edit", "-e",
	"-x",
	"-r",
	"--mainline", "-m",
	"--no-commit", "-n",
	"--signoff", "-s",
	"--ff",
	"--allow-empty",
	"--allow-empty-message",
	"--keep-redundant-commits",
	"--strategy",
	"--strategy-option", "-X",
	"--continue",
	"--quit",
	"--abort"
)
--------------------------------------------------------
-- git archive
--------------------------------------------------------
local git_archive_parser = clink.arg.new_parser()
git_archive_parser:set_flags(
	"--format",
	"--list", "-l",
	"--verbose", "-v",
	"--prefix",
	"--output", "-o",
	"--worktree-attributes",
	"--remote",
	"--exec"
)
--------------------------------------------------------
-- git clean
--------------------------------------------------------
local git_clean_parser = clink.arg.new_parser()
git_clean_parser:set_flags(
	"-d",
	"--force", "-f",
	"--interactive", "-i",
	"--dry-run", "-n",
	"--quiet", "-q",
	"--exclude", "-e",
	"-x",
	"-X"
)
--------------------------------------------------------
-- git bundle
--------------------------------------------------------
local git_bundle_parser = clink.arg.new_parser()

-- local git_citool_parser = clink.arg.new_parser()
-- local git_describe_parser = clink.arg.new_parser()
-- local git_format_patch_parser = clink.arg.new_parser()
-- local git_grep_parser = clink.arg.new_parser()
-- local git_gui_parser = clink.arg.new_parser()
-- local git_shortlog_parser = clink.arg.new_parser()
-- local git_show_parser = clink.arg.new_parser()
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
-- git notes
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
-- git rerere
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
-- git bisect
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
-- git help
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
-- Git
--------------------------------------------------------
local git_parser = clink.arg.new_parser()
git_parser:set_arguments({
	"add"..git_add_parser,
	"am"..git_am_parser,
	"archive"..git_archive_parser,
	"bisect"..git_bisect_parser,
	"branch"..git_branch_parser,
	"bundle",
	"checkout"..git_checkout_parser,
	"cherry-pick"..git_cherry_pick_parser,
	"citool",
	"clean"..git_clean_parser,
	"clone"..git_clone_parser,
	"commit"..git_commit_parser,
	"describe",
	"diff"..git_diff_parser,
	"fetch"..git_fetch_parser,
	"format-patch",
	"gc"..git_gc_parser,
	"grep",
	"gui",
	"init"..git_init_parser,
	"log"..git_log_parser,
	"merge"..git_merge_parser,
	"mv"..git_mv_parser,
	"notes"..git_notes_parser,
	"pull"..git_pull_parser,
	"push"..git_push_parser,
	"rebase"..git_rebase_parser,
	"reset"..git_reset_parser,
	"revert"..git_revert_parser,
	"rm"..git_rm_parser,
	"shortlog",
	"show",
	"stash"..git_stash_parser,
	"status"..git_status_parser,
	"submodule"..git_submodule_parser,
	"tag"..git_tag_parser,
	"config"..git_config_parser,
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
	"help"..git_help_parser
})
clink.arg.register_parser("git", git_parser)

--------------------------------------------------------
-- Git Flow
--------------------------------------------------------
if GitFlow then
	---------------------
	-- git flow feature
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
	-- git flow release
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
	-- git flow hotfix
	---------------------
	local git_flow_hotfix_parser = clink.arg.new_parser()
	git_flow_hotfix_parser:set_flags("-v")
	git_flow_hotfix_parser:set_arguments({
		"list"..clink.arg.new_parser():set_flags("-v"),
		"start"..clink.arg.new_parser():set_flags("-F"),
		"finish"..clink.arg.new_parser():set_flags("-F", "-s", "-u", "-m", "-p", "-k", "-n")
	})
	---------------------
	-- git flow support
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
		"flow"..clink.arg.new_parser():set_arguments({
			"init"..clink.arg.new_parser():set_flags("-d", "-f"),
			"feature"..git_flow_feature_parser,
			"release"..git_flow_release_parser,
			"hotfix"..git_flow_hotfix_parser,
			"support"..git_flow_support_parser,
		})
	})
	clink.arg.register_parser("git", git_flow_parser)
end
--------------------------------------------------------
-- HubFlow
--------------------------------------------------------
if HubFlow then
	local git_hf_parser = clink.arg.new_parser()
	git_hf_parser:set_arguments({
		"hf"..clink.arg.new_parser():set_arguments({
			"init",
			"feature",
			"release",
			"hotfix",
			"push",
			"pull",
			"update",
			"version",
			"upgrade"
		})
	})
	clink.arg.register_parser("git", git_hf_parser)
end
--------------------------------------------------------
-- Legit
--------------------------------------------------------
if Legit then
	local legit_parser = clink.arg.new_parser()
	legit_parser:set_arguments({
		"branches",		-- Get a nice pretty list of available branches.
		"sync",			-- Syncronizes the given branch. Defaults to current branch. Stash, Fetch, Auto-Merge/Rebase, Push, and Unstash. You can only sync published branches.
		"switch",		-- Switches to specified branch. Defaults to current branch. Automatically stashes and unstashes any changes.
		"sprout",		-- Creates a new branch off of the specified branch. Swiches to it immediately.
		"harvest",		-- Auto-Merge/Rebase of specified branch changes into the second branch.
		"graft",		-- Auto-Merge/Rebase of specified branch into the second branch. Immediately removes specified branch. You can only graft unpublished branches.
		"publish",		-- Publishes specified branch to the remote.
		"unpublish"		-- Removes specified branch from the remote.
	})
	clink.arg.register_parser("git", legit_parser)
end
