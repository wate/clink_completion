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
git_flow_feature_parser:set_arguments({"list", "start", "finish", "publish", "track", "diff", "rebase", "checkout", "pull"})
local git_flow_release_parser = clink.arg.new_parser()
git_flow_release_parser:set_arguments({"list", "start", "finish", "publish", "track"})
local git_flow_hotfix_parser = clink.arg.new_parser()
git_flow_hotfix_parser:set_arguments({"list", "start", "finish"})
local git_flow_support_parser = clink.arg.new_parser()
git_flow_support_parser:set_arguments({"list", "start"})

local git_flow_parser = clink.arg.new_parser()
git_flow_parser:set_arguments({
	"init",
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

local git_parser = clink.arg.new_parser()
git_parser:set_arguments({
	"add",
	"am",
	"archive",
	"bisect"..git_bisect_parser,
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
	"help",
	"instaweb",
	"merge-tree",
	"rerere"..git_rerere_parser,
	"rev-parse",
	"show-branch",
	"verify-tag",
	"whatchanged",
	"svn"..git_svn_parser,
	"flow"..git_flow_parser
})
clink.arg.register_parser("git", git_parser)



