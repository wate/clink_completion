local git_argument_tree = {
	-- Porcelain and ancillary commands from git's man page.
	"add", "am", "archive", "bisect", "branch", "bundle", "checkout",
	"cherry-pick", "citool", "clean", "clone", "commit", "describe", "diff",
	"fetch", "format-patch", "gc", "grep", "gui", "init", "log", "merge", "mv",
	"notes", "pull", "push", "rebase", "reset", "revert", "rm", "shortlog",
	"show", "stash", "status", "submodule", "tag", "config", "fast-export",
	"fast-import", "filter-branch", "lost-found", "mergetool", "pack-refs",
	"prune", "reflog", "relink", "remote", "repack", "replace", "repo-config",
	"annotate", "blame", "cherry", "count-objects", "difftool", "fsck",
	"get-tar-commit-id", "help", "instaweb", "merge-tree", "rerere",
	"rev-parse", "show-branch", "verify-tag", "whatchanged",
	--add Git Flow
	flow = {
		"init",
		feature = {
			"list",
			"start",
			"finish",
			"publish",
			"track",
			"diff",
			"rebase",
			"checkout",
			"pull",
			},
		release = {
			"list",
			"start",
			"finish",
			"publish",
			"track",
			},
		hotfix = {
			"list",
			"start",
			"finish",
			},
		support = {
			"list",
			"start",
			}
	}
}
clink.arg.register_tree("git", git_argument_tree)



