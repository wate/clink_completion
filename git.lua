promptFilter = true
promptFilterDetail = true
promptFilterDetailStash = false
GitFlow = true
HubFlow = false
Legit = false
local function getRemoteList(token)
	local remotes = {}
	local handle = io.popen("git remote 2>nul")
	for remote in handle:lines() do
		if token then
			if string.match(remote, token) then
				table.insert(remotes, remote)
			end
		else
			table.insert(remotes, remote)
		end
	end
	handle:close()
	return remotes
end
local function getBranchList(token)
	local branches = {}
	local handle = io.popen("git branch 2>nul")
	for line in handle:lines() do
		local branch = string.match(line, "[^%s]+$")
		if branch then
			if token then
				if string.match(branch, token) then
					table.insert(branches, branch)
				end
			else
				table.insert(branches, branch)
			end
		end
	end
	handle:close()
	return branches
end
local function getCurrentBranch()
	local currentBranch = nil
	local handle = io.popen("git branch 2>nul")
	for line in handle:lines() do
		local m = line:match("%* (.+)$")
		if m then
			currentBranch = m
			break
		end
	end
	handle:close()
	return currentBranch
end
local git_init_parser = clink.arg.new_parser()
git_init_parser:set_flags(
	"--quiet", "-q",
	"--bare",
	"--template",
	"--separate-git-dir",
	"--shared"
)
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
local git_push_parser = clink.arg.new_parser()
git_push_parser:set_arguments({getRemoteList})
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
local git_pull_parser = clink.arg.new_parser()
git_pull_parser:set_flags(git_fetch_flags, git_merge_flags)
local git_branch_parser = clink.arg.new_parser()
git_branch_parser:set_flags(
	"--delete"..clink.arg.new_parser():set_arguments({getBranchList}),
	"-d"..clink.arg.new_parser():set_arguments({getBranchList}),
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
local git_log_flags = {
	"--follow",
	"--no-decorate", "--decorate",
	"--source",
	"--use-mailmap",
	"--full-diff",
	"--log-size",
	"-L",
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
	"--objects",
	"--objects-edge",
	"--unpacked",
	"--no-walk",
	"--do-walk",
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
	"-c",
	"--cc",
	"-m",
	"-r",
	"-t"
}
local git_log_parser = clink.arg.new_parser()
git_log_parser:set_flags(git_log_flags, git_diff_flags)
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
local git_reset_parser = clink.arg.new_parser()
git_reset_parser:set_flags(
	"--soft",
	"--mixed",
	"--hard",
	"--merge",
	"--keep",
	"--quiet", "-q"
)
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
local git_checkout_parser = clink.arg.new_parser()
git_checkout_parser:set_arguments({getBranchList})
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
local git_remote_parser = clink.arg.new_parser()
git_remote_parser:set_flags("-v", "--verbose")
git_remote_parser:set_arguments({
	"add"..clink.arg.new_parser():set_flags("-t", "-m", "-f", "--tags", "--no-tags", "--mirror"),
	"rename",
	"remove",
	"rm",
	"set-head"..clink.arg.new_parser():set_flags("-a", "-d"),
	"set-branches"..clink.arg.new_parser():set_flags("--add"),
	"set-url"..clink.arg.new_parser():set_flags("--add", "--push", "--delete "),
	"show"..clink.arg.new_parser():set_flags("-v", "--verbose", "-n"),
	"prune"..clink.arg.new_parser():set_flags("--dry-run", "-n"),
	"update"..clink.arg.new_parser():set_flags("-v", "--verbose", "-p", "--prune"),
})
local git_submodule_parser = clink.arg.new_parser()
git_submodule_parser:set_arguments({
	"add"..clink.arg.new_parser():set_flags("--quiet", "-q", "--branch", "-b", "--force", "-f", "--name", "--reference", "--depth"),
	"status"..clink.arg.new_parser():set_flags("--quiet", "-q", "--cached", "--recursive"),
	"init"..clink.arg.new_parser():set_flags("--quiet", "-q"),
	"deinit"..clink.arg.new_parser():set_flags("--quiet", "-q", "--force", "-f"),
	"update"..clink.arg.new_parser():set_flags("--quiet", "-q", "--init", "--remote", "--no-fetch", "-N", "--force", "-f", "--rebase", "--reference", "--depth", "--merge", "--recursive"),
	"summary"..clink.arg.new_parser():set_flags("--quiet", "-q", "--cached", "--files", "--summary-limit", "-n"),
	"foreach"..clink.arg.new_parser():set_flags("--quiet", "-q", "--recursive"),
	"sync"..clink.arg.new_parser():set_flags("--quiet", "-q"),
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
local git_mv_parser = clink.arg.new_parser()
git_mv_parser:set_flags(
	"--force", "-f",
	"-k",
	"--dry-run", "-n",
	"--verbose", "-v"
)
local git_rm_parser = clink.arg.new_parser()
git_rm_parser:set_flags(
	"--force", "-f",
	"--dry-run", "-n",
	"-r",
	"--cached",
	"--ignore-unmatch",
	"--quiet", "-q"
)
local git_gc_parser = clink.arg.new_parser()
git_gc_parser:set_flags(
	"--aggressive",
	"--auto",
	"--prune", "--no-prune",
	"--quiet"
)
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
local git_bundle_parser = clink.arg.new_parser()
git_bundle_parser:set_arguments({
	"create",
	"verify",
	"list-heads",
	"unbundle"
})
local git_describe_parser = clink.arg.new_parser()
git_describe_parser:set_flags(
	"--dirty",
	"--all",
	"--tags",
	"--contains",
	"--abbrev",
	"--candidates",
	"--exact-match",
	"--debug",
	"--long",
	"--match",
	"--always",
	"--first-parent"
)
local git_format_patch_parser = clink.arg.new_parser()
git_format_patch_parser:set_flags(
	"--no-stat", "-p",
	"--no-patch", "-s",
	"--unified", "-U",
	"--minimal",
	"--patience",
	"--histogram",
	"--diff-algorithm",
	"--stat",
	"--numstat",
	"--shortstat",
	"--dirstat",
	"--summary",
	"--no-renames",
	"--full-index",
	"--binary", "--no-binary",
	"--abbrev",
	"--break-rewrites", "-B",
	"--find-renames", "-M",
	"--find-copies", "-C",
	"--find-copies-harder",
	"--irreversible-delete", "-D",
	"-l",
	"--text", "-a",
	"--ignore-space-at-eol",
	"--ignore-space-change", "-b",
	"--ignore-all-space", "-w",
	"--ignore-blank-lines",
	"--inter-hunk-context",
	"--function-context", "-W",
	"--ext-diff", "--no-ext-diff",
	"--textconv", "--no-textconv",
	"--ignore-submodules",
	"--src-prefix",
	"--dst-prefix",
	"--no-prefix",
	"--output-directory", "-o",
	"--numbered", "-n",
	"--no-numbered", "-N",
	"--start-number",
	"--numbered-files",
	"--keep-subject", "-k",
	"--signoff", "-s",
	"--stdout",
	"--attach", "--no-attach",
	"--inline",
	"--thread", "--no-thread",
	"--in-reply-to=Message-Id",
	"--ignore-if-in-upstream",
	"--subject-prefix",
	"--reroll-count", "-v",
	"--to",
	"--cc",
	"--from",
	"--add-header",
	"--cover-letter", "--no-cover-letter",
	"--notes",
	"--signature", "--no-signature",
	"--suffix",
	"--quiet",
	"--root"
)
local git_grep_parser = clink.arg.new_parser()
git_grep_parser:set_flags(
	"--cached",
	"--no-index",
	"--untracked",
	"--no-exclude-standard",
	"--exclude-standard",
	"--text", "-a",
	"--ignore-case", "-i",
	"-I",
	"--max-depth",
	"--word-regexp", "-w",
	"--invert-match", "-v",
	"-H", "-h",
	"--full-name",
	"--extended-regexp", "-E",
	"--basic-regexp", "-G",
	"--perl-regexp", "-P",
	"--fixed-strings", "-F",
	"--line-number", "-n",
	"--files-with-matches", "-l",
	"--name-only",
	"--files-without-match", "-L",
	"--open-files-in-pager", "-O",
	"--null", "-z",
	"--count", "-c",
	"--color", "--no-color",
	"--break",
	"--heading",
	"--show-function", "-p",
	"--context", "-C",
	"--after-context", "-A",
	"--before-context", "-B",
	"--function-context", "-W",
	"-f",
	"-e",
	"--and",
	"--or",
	"--not",
	"--all-match",
	"--quiet", "-q"
)
local git_shortlog_parser = clink.arg.new_parser()
git_shortlog_parser:set_flags(
	"--numbered", "-n",
	"--summary", "-s",
	"--email", "-e",
	"--format",
	"-w"
)
local git_show_parser = clink.arg.new_parser()
git_show_parser:set_flags(
	"--pretty",
	"--format",
	"--abbrev-commit",
	"--no-abbrev-commit",
	"--oneline",
	"--encoding",
	"--notes", "--no-notes",
	"--show-notes",
	"--standard-notes", "--no-standard-notes",
	"--show-signature"
)
local git_fast_export_parser = clink.arg.new_parser()
git_fast_export_parser:set_flags(
	"--progress",
	"--signed-tags",
	"--tag-of-filtered-object",
	"-M",
	"-C",
	"--export-marks",
	"--import-marks",
	"--fake-missing-tagger",
	"--use-done-feature",
	"--no-data",
	"--full-tree"
)
local git_fast_import_parser = clink.arg.new_parser()
git_fast_import_parser:set_flags(
	"--force",
	"--quiet",
	"--stats",
	"--cat-blob-fd",
	"--date-format",
	"--done",
	"--export-marks",
	"--import-marks",
	"--import-marks-if-exists",
	"--relative-marks", "--no-relative-marks",
	"--active-branches",
	"--big-file-threshold",
	"--depth",
	"--export-pack-edges",
	"--max-pack-size"
)
local git_difftool_parser = clink.arg.new_parser()
git_difftool_parser:set_flags(
	"--dir-diff", "-d",
	"--no-prompt", "-y", "--prompt",
	"--tool", "-t",
	"--tool-help",
	"--symlinks", "--no-symlinks",
	"--extcmd", "-x",
	"--gui", "-g",
	git_diff_flags
)
local git_mergetool_parser = clink.arg.new_parser()
git_mergetool_parser:set_flags(
	"--tool", "-t",
	"--tool-help",
	"--no-prompt", "-y", "--prompt"
)
local git_citool_parser = clink.arg.new_parser()
local git_gui_parser = clink.arg.new_parser()
git_gui_parser:set_arguments({
	"blame",
	"browser",
	"citool",
	"version"
})
local git_filter_branch_parser = clink.arg.new_parser()
git_filter_branch_parser:set_flags(
	"--env-filter",
	"--tree-filter",
	"--index-filter",
	"--parent-filter",
	"--msg-filter",
	"--commit-filter",
	"--tag-name-filter",
	"--subdirectory-filter",
	"--prune-empty",
	"--original",
	"-d",
	"--force", "-f"
)
local git_lost_found_parser = clink.arg.new_parser()
local git_pack_refs_parser = clink.arg.new_parser()
git_pack_refs_parser:set_flags("--all", "--no-prune")
local git_prune_parser = clink.arg.new_parser()
git_prune_parser:set_flags("--dry-run", "-n", "--verbose", "-v", "--expire")
local git_reflog_parser = clink.arg.new_parser()
git_reflog_parser:set_flags("--stale-fix", "--expire", "--expire-unreachable", "--all", "--updateref", "--rewrite", "--verbose")
local git_relink_parser = clink.arg.new_parser()
git_relink_parser:set_flags("--safe")
local git_repack_parser = clink.arg.new_parser()
git_repack_parser:set_flags("-a", "-A", "-d", "-l", "-f", "-F", "-q", "-n", "--window", "--depth", "--window-memory", "--max-pack-size")
local git_replace_parser = clink.arg.new_parser()
git_replace_parser:set_flags("-f", "-d", "-l")
local git_repo_config_parser = git_config_parser
local git_annotate_flags = {
	"-b",
	"--root",
	"--show-stats",
	"-L",
	"-l",
	"-t",
	"-S",
	"--reverse",
	"--porcelain", "-p",
	"--line-porcelain",
	"--incremental",
	"--encoding",
	"--contents",
	"--date",
	"-M",
	"-C",
	"-h"
}
local git_annotate_parser = clink.arg.new_parser()
git_annotate_parser:set_flags(git_annotate_flags)
local git_blame_parser = clink.arg.new_parser()
git_blame_parser:set_flags(
	"-c",
	"--score-debug",
	"--show-name", "-f",
	"--show-number", "-n",
	"-s",
	"--show-email", "-e",
	"-w",
	"--abbrev",
	git_annotate_flags
)
local git_cherry_parser = clink.arg.new_parser()
git_cherry_parser:set_flags("-v")
local git_count_objects_parser = clink.arg.new_parser()
git_count_objects_parser:set_flags("--verbose", "-v", "--human-readable", "-H")
local git_fsck_parser = clink.arg.new_parser()
git_fsck_parser:set_flags(
	"--unreachable",
	"--dangling", "--no-dangling",
	"--root",
	"--tags",
	"--cache",
	"--no-reflogs",
	"--full",
	"--strict",
	"--verbose",
	"--lost-found",
	"--progress", "--no-progress"
)
local git_get_tar_commit_id_parser = clink.arg.new_parser()
local git_instaweb_parser = clink.arg.new_parser()
git_instaweb_parser:set_flags(
	"--local", "-l",
	"--httpd", "-d",
	"--module-path", "-m",
	"--port", "-p",
	"--browser", "-b",
	"--start",
	"--stop",
	"--restart"
)
git_instaweb_parser:set_arguments({"start", "stop", "restart"})
local git_merge_tree_parser = clink.arg.new_parser()
local git_rev_parse_parser = clink.arg.new_parser()
git_rev_parse_parser:set_flags(
	"--parseopt",
	"--keep-dashdash",
	"--stop-at-non-option",
	"--sq-quote",
	"--revs-only",
	"--no-revs",
	"--flags", "--no-flags",
	"--default",
	"--prefix",
	"--verify",
	"--quiet", "-q",
	"--sq",
	"--not",
	"--symbolic",
	"--symbolic-full-name",
	"--abbrev-ref",
	"--disambiguate",
	"--all",
	"--branches",
	"--tags",
	"--remotes",
	"--glob",
	"--show-toplevel",
	"--show-prefix",
	"--show-cdup",
	"--git-dir",
	"--is-inside-git-dir",
	"--is-inside-work-tree",
	"--is-bare-repository",
	"--local-env-vars",
	"--short",
	"--since",
	"--after",
	"--until",
	"--before",
	"--resolve-git-dir"
)
local git_show_branch_parser = clink.arg.new_parser()
git_show_branch_parser:set_flags(
	"--remotes", "-r",
	"--all", "-a",
	"--current",
	"--topo-order",
	"--date-order",
	"--sparse",
	"--more",
	"--list",
	"--merge-base",
	"--independent",
	"--no-name",
	"--sha1-name",
	"--topics",
	"--reflog", "-g",
	"--color", "--no-color"
)
local git_verify_tag_parser = clink.arg.new_parser()
git_verify_tag_parser:set_flags("--verbose", "-v")
local git_whatchanged_parser = clink.arg.new_parser()
git_whatchanged_parser:set_flags(
	"-p",
	"-r",
	"-m",
	"--pretty",
	"--format",
	"--abbrev-commit", "--no-abbrev-commit",
	"--oneline",
	"--encoding",
	"--notes", "--no-notes",
	"--show-notes",
	"--standard-notes", "--no-standard-notes",
	"--show-signature"
)
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
local git_rerere_parser = clink.arg.new_parser()
git_rerere_parser:set_arguments({
	"clear",
	"forget",
	"status",
	"remaining",
	"diff",
	"gc"
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
local git_help_parser = clink.arg.new_parser()
git_help_parser:set_flags(
	"--all", "-a",
	"--guides", "-g",
	"--info", "-i",
	"--man", "-m",
	"--web", "-w"
)
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
local git_parser = clink.arg.new_parser()
git_parser:set_flags(
	"--version",
	"--help",
	"-c",
	"--exec-path",
	"--html-path",
	"--man-path",
	"--info-path",
	"--paginate", "-p", "--no-pager",
	"--git-dir",
	"--work-tree",
	"--namespace",
	"--bare",
	"--no-replace-objects",
	"--literal-pathspecs"
)
git_parser:set_arguments({
	"add"..git_add_parser,
	"am"..git_am_parser,
	"archive"..git_archive_parser,
	"bisect"..git_bisect_parser,
	"branch"..git_branch_parser,
	"bundle"..git_bundle_parser,
	"checkout"..git_checkout_parser,
	"cherry-pick"..git_cherry_pick_parser,
	"clean"..git_clean_parser,
	"clone"..git_clone_parser,
	"commit"..git_commit_parser,
	"describe"..git_describe_parser,
	"diff"..git_diff_parser,
	"fetch"..git_fetch_parser,
	"format-patch"..git_format_patch_parser,
	"gc"..git_gc_parser,
	"grep"..git_grep_parser,
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
	"shortlog"..git_shortlog_parser,
	"show"..git_show_parser,
	"stash"..git_stash_parser,
	"status"..git_status_parser,
	"submodule"..git_submodule_parser,
	"tag"..git_tag_parser,
	"config"..git_config_parser,
	"fast-export"..git_fast_export_parser,
	"fast-import"..git_fast_import_parser,
	"filter-branch"..git_filter_branch_parser,
	"lost-found"..git_lost_found_parser,
	"pack-refs"..git_pack_refs_parser,
	"prune"..git_prune_parser,
	"reflog"..git_reflog_parser,
	"relink"..git_relink_parser,
	"remote"..git_remote_parser,
	"repack"..git_repack_parser,
	"replace"..git_replace_parser,
	"repo-config"..git_repo_config_parser,
	"annotate"..git_annotate_parser,
	"blame"..git_blame_parser,
	"cherry"..git_cherry_parser,
	"count-objects"..git_count_objects_parser,
	"fsck"..git_fsck_parser,
	"get-tar-commit-id"..git_get_tar_commit_id_parser,
	"instaweb"..git_instaweb_parser,
	"merge-tree"..git_merge_tree_parser,
	"rerere"..git_rerere_parser,
	"rev-parse"..git_rev_parse_parser,
	"show-branch"..git_show_branch_parser,
	"verify-tag"..git_verify_tag_parser,
	"whatchanged"..git_whatchanged_parser,
	"svn"..git_svn_parser,
	"mergetool"..git_mergetool_parser,
	"difftool"..git_difftool_parser,
	"citool"..git_citool_parser,
	"gui"..git_gui_parser,
	"help"..git_help_parser
})
clink.arg.register_parser("git", git_parser)
if GitFlow then
	local gitFlowBranchPrefix = {}
	local handle = io.popen("git config --get-regexp gitflow.prefix 2>nul")
	for line in handle:lines() do
		if line then
			for k, v in string.gmatch(line, "gitflow.prefix.(%w+)%s+([^%s]*)") do
				gitFlowBranchPrefix[k] = v
			end	
		end
	end
	handle:close()
	local function isBranchType(prefix, branchName)
		local tmp = string.match(branchName, "^"..prefix)
		if tmp then
			return true
		else
			return false
		end
	end
	local function isFeature(branchName)
		return isBranchType(gitFlowBranchPrefix.feature, branchName)
	end
	local function isRelease(branchName)
		return isBranchType(gitFlowBranchPrefix.release, branchName)
	end
	local function isHotfix(branchName)
		return isBranchType(gitFlowBranchPrefix.hotfix, branchName)
	end
	local function isSupport(branchName)
		return isBranchType(gitFlowBranchPrefix.support, branchName)
	end
	local function getFlowBranchList(prefix, token)
		local flowBranches = {}
		if prefix then
			local i = string.len(prefix) + 1
			local branchList = getBranchList()
			local regexp = "^"..prefix
			if token then
				regexp = regexp..token
			end
			for _, branchName in pairs(branchList) do 
				local tmp = string.match(branchName, regexp)
				if tmp then
					table.insert(flowBranches, string.sub(branchName, i))
				end
			end
		end
		return flowBranches
	end
	local function getFeatureBranchList(token)
		return getFlowBranchList(gitFlowBranchPrefix.feature, token)
	end
	local function getReleaseBranchList(token)
		return getFlowBranchList(gitFlowBranchPrefix.release, token)
	end
	local function getHotfixBranchList(token)
		return getFlowBranchList(gitFlowBranchPrefix.hotfix, token)
	end
	local git_flow_init_parser = clink.arg.new_parser()
	git_flow_init_parser:set_flags("-d", "-f")
	local git_flow_feature_parser = clink.arg.new_parser()
	git_flow_feature_parser:set_flags("-v")
	git_flow_feature_parser:set_arguments({
		"list"..clink.arg.new_parser():set_flags("-v"),
		"start"..clink.arg.new_parser():set_flags("-F"),
		"finish"..clink.arg.new_parser():set_arguments({getFeatureBranchList}):set_flags("-F", "-r", "-k", "-D", "-S"),
		"publish"..clink.arg.new_parser():set_arguments({getFeatureBranchList}),
		"track"..clink.arg.new_parser():set_arguments({getFeatureBranchList}),
		"diff"..clink.arg.new_parser():set_arguments({getFeatureBranchList}),
		"rebase"..clink.arg.new_parser():set_arguments({getFeatureBranchList}):set_flags("-i"),
		"checkout"..clink.arg.new_parser():set_arguments({getFeatureBranchList}),
		"pull"..clink.arg.new_parser():set_arguments({getRemoteList}),
		"help"
	})
	local git_flow_release_parser = clink.arg.new_parser()
	git_flow_release_parser:set_flags("-v")
	git_flow_release_parser:set_arguments({
		"list"..clink.arg.new_parser():set_flags("-v"),
		"start"..clink.arg.new_parser():set_flags("-F"),
		"finish"..clink.arg.new_parser():set_arguments({getReleaseBranchList}):set_flags("-F", "-s", "-u", "-m", "-p", "-k", "-n"),
		"publish"..clink.arg.new_parser():set_arguments({getReleaseBranchList}),
		"track"..clink.arg.new_parser():set_arguments({getReleaseBranchList}),
		"help"
	})
	local git_flow_hotfix_parser = clink.arg.new_parser()
	git_flow_hotfix_parser:set_flags("-v")
	git_flow_hotfix_parser:set_arguments({
		"list"..clink.arg.new_parser():set_flags("-v"),
		"start"..clink.arg.new_parser():set_flags("-F"),
		"finish"..clink.arg.new_parser():set_arguments({getHotfixBranchList}):set_flags("-F", "-s", "-u", "-m", "-p", "-k", "-n"),
		"help"
	})
	local git_flow_support_parser = clink.arg.new_parser()
	git_flow_support_parser:set_flags("-v")
	git_flow_support_parser:set_arguments({
		"list"..clink.arg.new_parser():set_flags("-v"):set_arguments({"help"}),
		"start"..clink.arg.new_parser():set_flags("-F"):set_arguments({"help"}),
		"help"
	})
	local git_flow_version_parser = clink.arg.new_parser()
	git_flow_version_parser:set_arguments({"help"})
	local git_flow_parser = clink.arg.new_parser()
	git_flow_parser:set_arguments({
		"flow"..clink.arg.new_parser():set_arguments({
			"init"..git_flow_init_parser,
			"feature"..git_flow_feature_parser,
			"release"..git_flow_release_parser,
			"hotfix"..git_flow_hotfix_parser,
			"support"..git_flow_support_parser,
			"version"..git_flow_version_parser
		})
	})
	clink.arg.register_parser("git", git_flow_parser)
end
if HubFlow then
	local git_hf_init_parser = clink.arg.new_parser()
	git_hf_init_parser:set_flags("-a", "-f")
	git_hf_init_parser:set_arguments({"help"})
	local git_hf_feature_parser = clink.arg.new_parser()
	git_hf_feature_parser:set_flags("-v")
	git_hf_feature_parser:set_arguments({
		"list"..clink.arg.new_parser():set_flags("-v"),
		"start",
		"submit",
		"finish"..clink.arg.new_parser():set_flags("-r", "-F", "-k", "-D"),
		"track",
		"diff",
		"rebase"..clink.arg.new_parser():set_flags("-i"),
		"checkout",
		"pull"..clink.arg.new_parser():set_flags("-r"),
		"push",
		"cancel"..clink.arg.new_parser():set_flags("-f"),
		"help"
	})
	local git_hf_release_parser = clink.arg.new_parser()
	git_hf_release_parser:set_flags("-v")
	git_hf_release_parser:set_arguments({
		"list"..clink.arg.new_parser():set_flags("-v"),
		"start",
		"finish"..clink.arg.new_parser():set_flags("-s", "-u", "-m", "-p", "-k"),
		"cancel",
		"push",
		"pull",
		"help"
	})
	local git_hf_hotfix_parser = clink.arg.new_parser()
	git_hf_hotfix_parser:set_flags("-v")
	git_hf_hotfix_parser:set_arguments({
		"list"..clink.arg.new_parser():set_flags("-v"),
		"start",
		"finish"..clink.arg.new_parser():set_flags("-s", "-u", "-m", "-p", "-k"),
		"track",
		"pull"..clink.arg.new_parser():set_flags("-r"),
		"push",
		"cancel"..clink.arg.new_parser():set_flags("-f"),
		"help"
	})
	local git_hf_push_parser = clink.arg.new_parser()
	git_hf_push_parser:set_arguments({"help"}):set_flags("-f")
	local git_hf_pull_parser = clink.arg.new_parser()
	git_hf_pull_parser:set_arguments({"help"}):set_flags("-r")
	local git_hf_update_parser = clink.arg.new_parser()
	git_hf_update_parser:set_arguments({"help"}):set_flags("-p")
	local git_hf_version_parser = clink.arg.new_parser()
	git_hf_version_parser:set_arguments({"help"})
	local git_hf_parser = clink.arg.new_parser()
	git_hf_parser:set_arguments({
		"hf"..clink.arg.new_parser():set_arguments({
			"init"..git_hf_init_parser,
			"feature"..git_hf_feature_parser,
			"release"..git_hf_release_parser,
			"hotfix"..git_hf_hotfix_parser,
			"push"..git_hf_push_parser,
			"pull"..git_hf_pull_parser,
			"update"..git_hf_update_parser,
			"version"..git_hf_version_parser,
			"upgrade"..clink.arg.new_parser():set_arguments({"help"}),
			"help"
		})
	})
	clink.arg.register_parser("git", git_hf_parser)
end
if Legit then
	local git_legit_parser = clink.arg.new_parser()
	git_legit_parser:set_arguments({
		"branches",
		"sync",
		"switch",
		"sprout",
		"harvest",
		"graft",
		"publish",
		"unpublish"
	})
	clink.arg.register_parser("git", git_legit_parser)
	local legit_parser = clink.arg.new_parser()
	legit_parser:set_arguments({
		"branches",
		"sync",
		"switch",
		"sprout",
		"harvest",
		"graft",
		"publish",
		"unpublish",
		"install",
		"settings",
		"help"..clink.arg.new_parser():set_arguments({"branches", "sync", "switch", "sprout", "harvest", "graft", "publish", "unpublish"})
	})
	clink.arg.register_parser("legit", legit_parser)
end
if promptFilter then
	local function git_prompt_filter()
		local c = tonumber(clink.get_setting_int("prompt_colour"))
		local gitInfo = ''
		local currenBranck = getCurrentBranch()
		if currenBranck then
			if c < 0 then
				gitInfo = "["..currenBranck.."]"
			else
				gitInfo = "\x1b[33m".."["..currenBranck.."]"
			end
		end
		if gitInfo ~= '' then
			local uc = ''
			local us = ''
			local ut = ''
			local st = ''
			if promptFilterDetail then
				for line in io.popen("git status -s"):lines() do
					if string.find(line, "^[AMD]") then
						uc='+'
					elseif string.find(line, "^ [AMD]") then
						us='!'
					else
						ut='?'
					end
					if uc ~= '' and us ~= '' and ut ~= '' then
						break
					end
				end
				if promptFilterDetailStash then
					local handle = io.popen("git rev-parse --verify refs/stash 2>nul")
					for line in handle:lines() do
						local m = line:match("(.+)")
						if m then
							st='$'
							break
						end
					end
					handle:close()
				end
				if uc ~= '' or us ~= '' or ut ~= '' or st ~= '' then
					gitInfo = gitInfo..'\x1b[32m['..uc..us..ut..st..']'
				end
			end
			if c < 0 then
				clink.prompt.value = gitInfo..clink.prompt.value
			else
				clink.prompt.value = gitInfo.."\x1b[34m"..clink.prompt.value.."\x1b[39m"
			end
		end
		return false
	end
	clink.prompt.register_filter(git_prompt_filter, 50)
end
