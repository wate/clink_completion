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

local git_rerere_parser = clink.arg.new_parser()
git_rerere_parser:set_arguments({
	"clear",
	"forget",
	"status",
	"remaining",
	"diff",
	"gc"
})
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
local git_flow_release_parser = clink.arg.new_parser()
git_flow_release_parser:set_flags("-v")
git_flow_release_parser:set_arguments({
	"list"..clink.arg.new_parser():set_flags("-v"),
	"start"..clink.arg.new_parser():set_flags("-F"),
	"finish"..clink.arg.new_parser():set_flags("-F", "-s", "-u", "-m", "-p", "-k", "-n"),
	"publish",
	"track"
})
local git_flow_hotfix_parser = clink.arg.new_parser()
git_flow_hotfix_parser:set_flags("-v")
git_flow_hotfix_parser:set_arguments({
	"list"..clink.arg.new_parser():set_flags("-v"),
	"start"..clink.arg.new_parser():set_flags("-F"),
	"finish"..clink.arg.new_parser():set_flags("-F", "-s", "-u", "-m", "-p", "-k", "-n")
})
local git_flow_support_parser = clink.arg.new_parser()
git_flow_support_parser:set_flags("-v")
git_flow_support_parser:set_arguments({
	"list"..clink.arg.new_parser():set_flags("-v"),
	"start"..clink.arg.new_parser():set_flags("-F")
})
local git_flow_parser = clink.arg.new_parser()
git_flow_parser:set_arguments({
	"init"..clink.arg.new_parser():set_flags("-d", "-f"),
	"feature"..git_flow_feature_parser,
	"release"..git_flow_release_parser,
	"hotfix"..git_flow_hotfix_parser,
	"support"..git_flow_support_parser,
})
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

local git_merge_parser = clink.arg.new_parser()
git_merge_parser:set_flags(
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
)

local git_parser = clink.arg.new_parser()
git_parser:set_arguments({
	"add",
	"am",
	"archive",
	"bisect"..git_bisect_parser,
	"branch"..git_branch_parser,
	"bundle",
	"checkout",
	"cherry-pick",
	"citool",
	"clean",
	"clone",
	"commit"..git_commit_parser,
	"describe",
	"diff",
	"fetch",
	"format-patch",
	"gc",
	"grep",
	"gui",
	"init",
	"log",
	"merge"..git_merge_parser,
	"mv",
	"notes"..git_notes_parser,
	"pull",
	"push",
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
	"flow"..git_flow_parser,
	"help"
})
clink.arg.register_parser("git", git_parser)
