local ack_parser = clink.arg.new_parser()
ack_parser:set_flags(
	"--perl",
	"--make",
	"--rake",
	"--cmake",
	"--actionscript",
	"--ada",
	"--asp",
	"--aspx",
	"--asm",
	"--batch",
	"--cfmx",
	"--clojure",
	"--cc",
	"--hh",
	"--cpp",
	"--csharp",
	"--css",
	"--dart",
	"--delphi",
	"--elisp",
	"--erlang",
	"--fortran",
	"--go",
	"--groovy",
	"--haskell",
	"--html",
	"--java",
	"--js",
	"--jsp",
	"--lisp",
	"--lua",
	"--objc",
	"--objcpp",
	"--ocaml",
	"--parrot",
	"--php",
	"--plone",
	"--python",
	"--rr",
	"--ruby",
	"--rust",
	"--scala",
	"--scheme",
	"--shell",
	"--smalltalk",
	"--sql",
	"--tcl",
	"--tex",
	"--tt",
	"--vb",
	"--verilog",
	"--vhdl",
	"--vim",
	"--xml",
	"--yaml",

	"-i", "--ignore-case",
	"--smart-case", "--nosmart-case",
	"-v", "--invert-match",
	"-w", "--word-regexp",
	"-Q", "--literal",
	"--lines",
	"-l", "--files-with-matches",
	"-L", "--files-without-matches",
	"--output",
	"-o",
	"--passthru",
	"--match",
	"-m", "--max-count",
	"-1",
	"-H", "--with-filename",
	"-h", "--no-filename",
	"-c", "--count",
	"--column", "--nocolumn",
	"-A", "--after-context",
	"-B", "--before-context",
	"-C", "--context",
	"--print0",
	"-s",
	"--pager",
	"--nopager",
	"--heading", "--noheading",
	"--break", "--nobreak",
	"--group",
	"--nogroup",
	"--color", "--nocolor",
	"--colou", "--nocolou",
	"--color-filename",
	"--color-match",
	"--color-lineno",
	"--flush",
	"-f",
	"-g",
	"--sort-files",
	"--show-types",
	"--files-from",
	"-x",
	"--ignore-dir", "--noignore-dir",
	"--ignore-directory", "--noignore-directory",
	"--ignore-file=filter",
	"-r", "-R", "--recurse",
	"-n", "--no-recurse",
	"--follow", "--nofollow",
	"-k", "--known-types",
	"--type",
	"--type-set",
	"--type-add",
	"--type-del",
	"--env", "--noenv",
	"--ackrc",
	"--ignore-ack-defaults",
	"--create-ackrc",
	"--help-types",
	"--dump",
	"--filter", "--nofilter",
	"--man",
	"--thpppt",
	"--bar",
	"--version",
	"--help", "-?"
)
clink.arg.register_parser("ack", ack_parser)

local awk_parser = clink.arg.new_parser()
awk_parser:set_flags(
	"-f", "--file=progfile",
	"-F", "--field-separator",
	"-v", "--assign",
	"-m",
	"--compat",
	"--copyleft",
	"--copyright",
	"--dump-variables",
	"--exec",
	"--gen-po",
	"--help",
	"--lint",
	"--lint-old",
	"--non-decimal-data",
	"--profile",
	"--posix",
	"--re-interval",
	"--source",
	"--traditional",
	"--usage",
	"--use-lc-numeric",
	"--version",
	"--source",
	"-W"..clink.arg.new_parser():set_arguments({
		"compat",
		"copyleft ",
		"copyright",
		"dump-variables",
		"exec",
		"gen-po",
		"help",
		"lint",
		"lint-old",
		"non-decimal-data",
		"profile",
		"posix",
		"re-interval",
		"source",
		"traditional",
		"usage",
		"use-lc-numeric",
		"version"
	})
)
clink.arg.register_parser("awk", awk_parser)
clink.arg.register_parser("gawk", awk_parser)

clink.arg.register_parser("basename", clink.arg.new_parser():set_flags("--help", "--version"))

local bc_parser = clink.arg.new_parser()
bc_parser:set_flags(
	"-h", "--help",
	"-i", "--interactive",
	"-l", "--mathlib",
	"-q", "--quiet",
	"-s", "--standard",
	"-w", "--warn",
	"-v", "--version"
)
clink.arg.register_parser("bc", bc_parser)

local bison_parser = clink.arg.new_parser()
bison_parser:set_flags(
	"-h", "--help",
	"-V", "--version",
	"--print-localedir",
	"--print-datadir",
	"-y", "--yacc",
	"-W", "--warnings",
	"-L", "--language",
	"-S", "--skeleton",
	"-t", "--debug",
	"--locations",
	"-p", "--name-prefix",
	"-l", "--no-lines",
	"-k", "--token-table",
	"--defines",
	"-d",
	"-r", "--report",
	"--report-file",
	"-v", "--verbose",
	"-b", "--file-prefix",
	"-o", "--output",
	"-g", "--graph",
	"-x", "--xml"
)
clink.arg.register_parser("bison", bison_parser)

local bunzip2_parser = clink.arg.new_parser()
bunzip2_parser:set_flags(
	"-h", "--help",
	"-d", "--decompress",
	"-z", "--compress",
	"-k", "--keep",
	"-f", "--force",
	"-t", "--test",
	"-c", "--stdout",
	"-q", "--quiet",
	"-v", "--verbose",
	"-L", "--license",
	"-V", "--version",
	"-s", "--small",
	"-1", "-2", "-3", "-4", "-5", "-6", "-7", "-8", "-9",
	"--fast",
	"--best"
)
clink.arg.register_parser("bunzip2", bunzip2_parser)

local bzip2_parser = clink.arg.new_parser()
bzip2_parser:set_flags(
	"-h", "--help",
	"-d", "--decompress",
	"-z", "--compress",
	"-k", "--keep",
	"-f", "--force",
	"-t", "--test",
	"-c", "--stdout",
	"-q", "--quiet",
	"-v", "--verbose",
	"-L", "--license",
	"-V", "--version",
	"-s", "--small",
	"-1", "-2", "-3", "-4", "-5", "-6", "-7", "-8", "-9",
	"--fast",
	"--best"
)
clink.arg.register_parser("bzip2", bzip2_parser)

local cat_parser = clink.arg.new_parser()
cat_parser:set_flags(
	"-A", "--show-all",
	"-b", "--number-nonblank",
	"-e",
	"-E", "--show-ends",
	"-n", "--number",
	"-s", "--squeeze-blank",
	"-t",
	"-T", "--show-tabs",
	"-u",
	"-v", "--show-nonprinting",
	"--help",
	"--version",
	"-B, --binary"
)
clink.arg.register_parser("cat", cat_parser)

local chgrp_parser = clink.arg.new_parser()
chgrp_parser:set_flags(
	"-c", "--changes",
	"--dereference",
	"-h", "--no-dereference",
	"--no-preserve-root",
	"--preserve-root",
	"-f", "--silent", "--quiet",
	"--reference",
	"-R", "--recursive",
	"-v", "--verbose",
	"-H",
	"-L",
	"-P",
	"--help",
	"--version"
)
clink.arg.register_parser("chgrp", chgrp_parser)

local chmod_parser = clink.arg.new_parser()
chmod_parser:set_flags(
	"-c", "--changes",
	"--no-preserve-root",
	"--preserve-root",
	"-f", "--silent", "--quiet",
	"-v", "--verbose",
	"--reference",
	"-R", "--recursive",
	"--help",
	"--version"
)
clink.arg.register_parser("chmod", chmod_parser)

local chown_parser = clink.arg.new_parser()
chown_parser:set_flags(
	"-c", "--changes",
	"--dereference",
	"-h", "--no-dereference",
	"--from",
	"--no-preserve-root",
	"--preserve-root",
	"-f", "--silent", "--quiet",
	"--reference",
	"-R", "--recursive",
	"-v", "--verbose",
	"-H",
	"-L",
	"-P",
	"--help",
	"--version"
)
clink.arg.register_parser("chown", chown_parser)

clink.arg.register_parser("chroot", clink.arg.new_parser():set_flags("--help", "--version"))
clink.arg.register_parser("cksum", clink.arg.new_parser():set_flags("--help", "--version"))

local cp_parser = clink.arg.new_parser()
cp_parser:set_flags(
	"-a", "--archive",
	"--backup",
	"-b",
	"--copy-contents",
	"-d",
	"--no-dereference",
	"-f", "--force",
	"-i", "--interactive",
	"-H",
	"-l", "--link",
	"-L", "--dereference",
	"-p",
	"--preserve",
	"--no-preserve",
	"--parents",
	"-P",
	"-R", "-r", "--recursive",
	"--remove-destination",
	"--reply",
	"--sparse",
	"--strip-trailing-slashes",
	"-s", "--symbolic-link",
	"-S", "--suffix",
	"-t", "--target-directory",
	"-T", "--no-target-directory",
	"-u", "--update",
	"-v", "--verbose",
	"-x", "--one-file-system",
	"--help",
	"--version"
)
clink.arg.register_parser("cp", cp_parser)

local csplit_parser = clink.arg.new_parser()
csplit_parser:set_flags(
	"-b", "--suffix-format",
	"-f", "--prefix",
	"-k", "--keep-files",
	"-n", "--digits",
	"-s", "--quiet", "--silent",
	"-z", "--elide-empty-files",
	"--help",
	"--version"
)
clink.arg.register_parser("csplit", csplit_parser)

local curl_parser = clink.arg.new_parser()
curl_parser:set_flags(
	"--anyauth",
	"-a", "--append",
	"--basic",
	"--cacert",
	"--capath",
	"-E", "--cert",
	"--cert-type",
	"--ciphers",
	"--compressed",
	"-K", "--config",
	"--connect-timeout",
	"-C", "--continue-at",
	"-b", "--cookie",
	"-c", "--cookie-jar",
	"--create-dirs",
	"--crlf",
	"--crlfile",
	"-d", "--data",
	"--data-ascii",
	"--data-binary",
	"--data-urlencode",
	"--delegation",
	"--digest",
	"--disable-eprt",
	"--disable-epsv",
	"-D", "--dump-header",
	"--egd-file",
	"--engine",
	"-f", "--fail",
	"-F", "--form",
	"--form-string",
	"--ftp-account",
	"--ftp-alternative-to-user",
	"--ftp-create-dirs",
	"--ftp-method",
	"--ftp-pasv",
	"-P", "--ftp-port",
	"--ftp-skip-pasv-ip",
	"--ftp-pret",
	"--ftp-ssl-ccc",
	"--ftp-ssl-ccc-mode",
	"--ftp-ssl-control",
	"-G", "--get",
	"-g", "--globoff",
	"-H", "--header",
	"-I", "--head",
	"-h", "--help",
	"--hostpubmd5",
	"-0", "--http1.0",
	"--ignore-content-length",
	"-i", "--include",
	"-k", "--insecure",
	"--interface",
	"-4", "--ipv4",
	"-6", "--ipv6",
	"-j", "--junk-session-cookies",
	"--keepalive-time",
	"--key",
	"--key-type",
	"--krb",
	"--libcurl",
	"--limit-rate",
	"-l", "--list-only",
	"--local-port",
	"-L", "--location",
	"--location-trusted",
	"-M", "--manual",
	"--mail-from",
	"--mail-rcpt",
	"--mail-auth",
	"--max-filesize",
	"--max-redirs",
	"-m", "--max-time",
	"--metalink",
	"--negotiate",
	"-n", "--netrc",
	"--netrc-optional",
	"--netrc-file",
	"-N", "--no-buffer",
	"--no-keepalive",
	"--no-sessionid",
	"--noproxy",
	"--ntlm",
	"-o", "--output",
	"--pass",
	"--post301",
	"--post302",
	"--post303",
	"-#", "--progress-bar",
	"--proto PROTOCOLS",
	"--proto-redir",
	"-x", "--proxy",
	"--proxy-anyauth",
	"--proxy-basic",
	"--proxy-digest",
	"--proxy-negotiate",
	"--proxy-ntlm",
	"-U", "--proxy-user",
	"--proxy1.0",
	"-p", "--proxytunnel",
	"--pubkey",
	"-Q", "--quote",
	"--random-file",
	"-r", "--range",
	"--raw",
	"-e", "--referer",
	"-J", "--remote-header-name",
	"-O", "--remote-name",
	"--remote-name-all",
	"-R", "--remote-time",
	"-X", "--request",
	"--resolve",
	"--retry",
	"--retry-delay",
	"--retry-max-time",
	"-S", "--show-error",
	"-s", "--silent",
	"--socks4",
	"--socks4a",
	"--socks5",
	"--socks5-hostname",
	"--socks5-gssapi-service",
	"--socks5-gssapi-nec",
	"-Y", "--speed-limit",
	"-y", "--speed-time",
	"--ssl",
	"--ssl-reqd",
	"-2", "--sslv2",
	"-3", "--sslv3",
	"--ssl-allow-beast",
	"--stderr",
	"--tcp-nodelay",
	"-t", "--telnet-option",
	"--tftp-blksize",
	"-z", "--time-cond",
	"-1", "--tlsv1",
	"--trace",
	"--trace-ascii",
	"--trace-time",
	"--tr-encoding",
	"-T", "--upload-file",
	"--url",
	"-B", "--use-ascii",
	"-u", "--user",
	"--tlsuser",
	"--tlspassword",
	"--tlsauthtype",
	"-A", "--user-agent",
	"-v", "--verbose",
	"-V", "--version",
	"-w", "--write-out",
	"--xattr",
	"-q"
)
clink.arg.register_parser("curl", curl_parser)

local cut_parser = clink.arg.new_parser()
cut_parser:set_flags(
	"-b", "--bytes",
	"-c", "--characters",
	"-d", "--delimiter",
	"-f", "--fields",
	"--complement",
	"-s", "--only-delimited",
	"--output-delimiter",
	"--help",
	"--version"
)
clink.arg.register_parser("cut", cut_parser)

local dc_parser = clink.arg.new_parser()
dc_parser:set_flags(
	"-e", "--expression",
	"-f", "--file",
	"-h", "--help",
	"-V", "--version"
)
clink.arg.register_parser("dc", dc_parser)

local df_parser = clink.arg.new_parser()
df_parser:set_flags(
	"-a", "--all",
	"-B", "--block-size",
	"-h", "--human-readable",
	"-H", "--si",
	"-i", "--inodes",
	"-k",
	"-l", "--local",
	"--no-sync",
	"-P", "--portability",
	"--sync",
	"-t", "--type",
	"-T", "--print-type",
	"-x", "--exclude-type",
	"--help",
	"--version"
)
clink.arg.register_parser("df", df_parser)

local diff_parser = clink.arg.new_parser()
diff_parser:set_flags(
	"-i", "--ignore-case",
	"--ignore-file-name-case",
	"--no-ignore-file-name-case",
	"-E", "--ignore-tab-expansion",
	"-b", "--ignore-space-change",
	"-w", "--ignore-all-space",
	"-B", "--ignore-blank-lines",
	"-I", "--ignore-matching-lines",
	"--strip-trailing-cr",
	"--binary",
	"-a", "--text",
	"-c", "-C", "--context",
	"-u", "-U", "--unified",
	"--label",
	"-p", "--show-c-function",
	"-F", "--show-function-line",
	"-q", "--brief",
	"-e", "--ed",
	"--normal",
	"-n", "--rcs",
	"-y", "--side-by-side",
	"-W", "--width",
	"--left-column",
	"--suppress-common-lines",
	"-D", "--ifdef",
	"--GTYPE-group-format",
	"--line-format",
	"--LTYPE-line-format",
	"-l", "--paginate",
	"-t", "--expand-tabs",
	"-T", "--initial-tab",
	"--tabsize",
	"-r", "--recursive",
	"-N", "--new-file",
	"--unidirectional-new-file",
	"-s", "--report-identical-files",
	"-x", "--exclude",
	"-X", "--exclude-from",
	"-S", "--starting-file",
	"--from-file",
	"--to-file",
	"--horizon-lines",
	"-d", "--minimal",
	"--speed-large-files",
	"-v", "--version",
	"--help"
)
clink.arg.register_parser("diff", diff_parser)

local diff3__parser = clink.arg.new_parser()
diff3__parser:set_flags(
	"-e", "--ed",
	"-E", "--show-overlap",
	"-A", "--show-all",
	"-x", "--overlap-only",
	"-X",
	"-3", "--easy-only",
	"-m", "--merge",
	"-L", "--label",
	"-i",
	"-a", "--text",
	"--strip-trailing-cr",
	"-T", "--initial-tab",
	"--diff-program",
	"-v", "--version",
	"--help"
)
clink.arg.register_parser("diff3", diff3_parser)

clink.arg.register_parser("dirname", clink.arg.new_parser():set_flags("--help", "--version"))

local du_parser = clink.arg.new_parser()
du_parser:set_flags(
	"-a", "--all",
	"--apparent-size",
	"-B", "--block-size",
	"-b", "--bytes",
	"-c", "--total",
	"-D", "--dereference-args",
	"--files0-from",
	"-H",
	"-h", "--human-readable",
	"--si",
	"-k",
	"-l", "--count-links",
	"-L", "--dereference",
	"-P", "--no-dereference",
	"-0", "--null",
	"-S", "--separate-dirs",
	"-s", "--summarize",
	"-x", "--one-file-system",
	"-X", "--exclude-from",
	"--exclude",
	"--max-depth",
	"--help",
	"--version"
)
clink.arg.register_parser("du", du_parser)

local egrep_parser = clink.arg.new_parser()
egrep_parser:set_flags(
	"-e", "--regexp",
	"-f", "--file",
	"-i", "--ignore-case",
	"-w", "--word-regexp",
	"-x", "--line-regexp",
	"-z", "--null-data",
	"-s", "--no-messages",
	"-v", "--invert-match",
	"-V", "--version",
	"--help",
	"--mmap",
	"-m", "--max-count",
	"-b", "--byte-offset",
	"-n", "--line-number",
	"--line-buffered",
	"-H", "--with-filename",
	"-h", "--no-filename",
	"--label",
	"-o", "--only-matching",
	"-q", "--quiet", "--silent",
	"--binary-files",
	"-a", "--text",
	"-I",
	"-d", "--directories",
	"-D", "--devices",
	"-R", "-r", "--recursive",
	"--include",
	"--exclude",
	"--exclude-from",
	"--exclude-dir",
	"-L", "--files-without-match",
	"-l", "--files-with-matches",
	"-c", "--count",
	"-T", "--initial-tab",
	"-Z", "--null",
	"-B", "--before-context",
	"-A", "--after-context",
	"-C", "--context",
	"--color",
	"--colour",
	"-U", "--binary",
	"-u", "--unix-byte-offsets"
)
clink.arg.register_parser("egrep", egrep_parser)

local env_parser = clink.arg.new_parser()
env_parser:set_flags(
	"-i", "--ignore-environment",
	"-u", "--unset",
	"--help",
	"--version"
)
clink.arg.register_parser("env", env_parser)

clink.arg.register_parser("expr", clink.arg.new_parser():set_flags("--help", "--version"))
clink.arg.register_parser("factor", clink.arg.new_parser():set_flags("--help", "--version"))

local fgrep_parser = clink.arg.new_parser()
fgrep_parser:set_flags(
	"-e", "--regexp",
	"-f", "--file",
	"-i", "--ignore-case",
	"-w", "--word-regexp",
	"-x", "--line-regexp",
	"-z", "--null-data",
	"-s", "--no-messages",
	"-v", "--invert-match",
	"-V", "--version",
	"--help",
	"--mmap",
	"-m", "--max-count",
	"-b", "--byte-offset",
	"-n", "--line-number",
	"--line-buffered",
	"-H", "--with-filename",
	"-h", "--no-filename",
	"--label",
	"-o", "--only-matching",
	"-q", "--quiet", "--silent",
	"--binary-files",
	"-a", "--text",
	"-I",
	"-d", "--directories",
	"-D", "--devices",
	"-R", "-r", "--recursive",
	"--include",
	"--exclude",
	"--exclude-from",
	"--exclude-dir",
	"-L", "--files-without-match",
	"-l", "--files-with-matches",
	"-c", "--count",
	"-T", "--initial-tab",
	"-Z", "--null",
	"-B", "--before-context",
	"-A", "--after-context",
	"-C", "--context",
	"--color",
	"--colour",
	"-U", "--binary",
	"-u", "--unix-byte-offsets"
)
clink.arg.register_parser("fgrep", fgrep_parser)

local flex_parser = clink.arg.new_parser()
flex_parser:set_flags(
	"-b",
	"-c",
	"-d",
	"-f",
	"-h",
	"-i",
	"-l",
	"-n",
	"-p",
	"-s",
	"-t",
	"-v",
	"-w",
	"-B",
	"-F",
	"-I",
	"-L",
	"-T",
	"-V",
	"-7",
	"-8",
	"-+",
	"-?",
	"-C",
	"-o",
	"-P",
	"-S",
	"--help",
	"--version"
)
clink.arg.register_parser("flex", flex_parser)

local fmt_parser = clink.arg.new_parser()
fmt_parser:set_flags(
	"-c", "--crown-margin",
	"-p", "--prefix",
	"-s", "--split-only",
	"-t", "--tagged-paragraph",
	"-u", "--uniform-spacing",
	"-w", "--width",
	"--help",
	"--version"
)
clink.arg.register_parser("fmt", fmt_parser)

local fold_parser = clink.arg.new_parser()
fold_parser:set_flags(
	"-b", "--bytes",
	"-s", "--spaces",
	"-w", "--width",
	"--help",
	"--version"
)
clink.arg.register_parser("fold", fold_parser)

local gfind_parser = clink.arg.new_parser()
gfind_parser:set_flags(
	"-and",
	"-or",
	"-daystart",
	"-follow",
	"-depth",
	"--help",
	"-maxdepth",
	"-mindepth",
	"-mount",
	"-noleaf",
	"--version",
	"-xdev",
	"-ignore_readdir_race",
	"-noignore_readdir_race",
	"-amin",
	"-anewer",
	"-atime",
	"-cmin",
	"-cnewer",
	"-ctime",
	"-empty",
	"-false",
	"-fstype",
	"-gid",
	"-group",
	"-ilname",
	"-iname",
	"-inum",
	"-iwholename",
	"-iregex",
	"-links",
	"-lname",
	"-mmin",
	"-mtime",
	"-name",
	"-newer",
	"-nouser",
	"-nogroup",
	"-path",
	"-perm",
	"-regex",
	"-wholename",
	"-size",
	"-true",
	"-type",
	"-uid",
	"-used",
	"-user",
	"-xtype",
	"-exec",
	"-fprint",
	"-fprint0",
	"-fprintf",
	"-fls",
	"-ok",
	"-print",
	"-print0",
	"-printf",
	"-prune",
	"-ls",
	"-delete",
	"-quit"
)
clink.arg.register_parser("gfind", gfind_parser)

local grep_parser = clink.arg.new_parser()
grep_parser:set_flags(
	"-E", "--extended-regexp",
	"-F", "--fixed-strings",
	"-G", "--basic-regexp",
	"-P", "--perl-regexp",
	"-e", "--regexp",
	"-f", "--file",
	"-i", "--ignore-case",
	"-w", "--word-regexp",
	"-x", "--line-regexp",
	"-z", "--null-data",
	"-s", "--no-messages",
	"-v", "--invert-match",
	"-V", "--version",
	"--help",
	"--mmap",
	"-m", "--max-count",
	"-b", "--byte-offset",
	"-n", "--line-number",
	"--line-buffered",
	"-H", "--with-filename",
	"-h", "--no-filename",
	"--label",
	"-o", "--only-matching",
	"-q", "--quiet", "--silent",
	"--binary-files",
	"-a", "--text",
	"-I",
	"-d", "--directories",
	"-D", "--devices",
	"-R", "-r", "--recursive",
	"--include",
	"--exclude",
	"--exclude-from",
	"--exclude-dir",
	"-L", "--files-without-match",
	"-l", "--files-with-matches",
	"-c", "--count",
	"-T", "--initial-tab",
	"-Z", "--null",
	"-B", "--before-context",
	"-A", "--after-context",
	"-C", "--context",
	"--color",
	"--colour",
	"-U", "--binary",
	"-u", "--unix-byte-offsets"
)
clink.arg.register_parser("grep", grep_parser)

local gzip_parser = clink.arg.new_parser()
gzip_parser:set_flags(
	"-a", "--ascii",
	"-c", "--stdout",
	"-d", "--decompress",
	"-f", "--force",
	"-h", "--help",
	"-k", "--keep",
	"-l", "--list",
	"-L", "--license",
	"-n", "--no-name",
	"-N", "--name",
	"-q", "--quiet",
	"-r", "--recursive",
	"-S", "--suffix",
	"-t", "--test",
	"-v", "--verbose",
	"-V", "--version",
	"-1", "--fast",
	"-9", "--best",
	"--rsyncable"
)
clink.arg.register_parser("gzip", gzip_parser)

local head_parser = clink.arg.new_parser()
head_parser:set_flags(
	"-c", "--bytes",
	"-n", "--lines",
	"-q", "--quiet", "--silent",
	"-v", "--verbose",
	"--help",
	"--version"
)
clink.arg.register_parser("head", head_parser)

clink.arg.register_parser("hostid", clink.arg.new_parser():set_flags("--help", "--version"))

local id_parser = clink.arg.new_parser()
id_parser:set_flags(
	"-a",
	"-g", "--group",
	"-G", "--groups",
	"-n", "--name",
	"-r", "--real",
	"-u", "--user",
	"--help",
	"--version"
)
clink.arg.register_parser("id", id_parser)

local install_parser = clink.arg.new_parser()
install_parser:set_flags(
	"--backup",
	"-b",
	"-d", "--directory",
	"-D",
	"-g", "--group",
	"-m", "--mode",
	"-o", "--owner",
	"-p", "--preserve-timestamps",
	"-s", "--strip",
	"-S", "--suffix",
	"-t", "--target-directory",
	"-T", "--no-target-directory",
	"-v", "--verbose",
	"--help",
	"--version"
)
clink.arg.register_parser("install", install_parser)

local join_parser = clink.arg.new_parser()
join_parser:set_flags(
	"-a",
	"-e",
	"-i", "--ignore-case",
	"-j",
	"-o",
	"-t",
	"-v",
	"-1",
	"-2",
	"--help",
	"--version"
)
clink.arg.register_parser("join", join_parser)

local jwhois_parser = clink.arg.new_parser()
jwhois_parser:set_flags(
	"-v", "--verbose",
	"-c", "--config",
	"-h", "--host",
	"-n", "--no-redirect",
	"-s", "--no-whoisservers",
	"-a", "--raw",
	"-i", "--display-redirections",
	"-p", "--port",
	"-r", "--rwhois",
	"--rwhois-display",
	"--rwhois-limit",
	"-f", "--force-lookup",
	"-d", "--disable-cache",
	"--help",
	"--version"
)
clink.arg.register_parser("jwhois", jwhois_parser)

local less_parser = clink.arg.new_parser()
clink.arg.register_parser("less", less_parser)

clink.arg.register_parser("lesskey", clink.arg.new_parser():set_flags("-o"))

local ln_parser = clink.arg.new_parser()
clink.arg.register_parser("ln", ln_parser)

local ls_parser = clink.arg.new_parser()
clink.arg.register_parser("ls", ls_parser)

local m4__parser = clink.arg.new_parser()
clink.arg.register_parser("m4", m4_parser)

local make_parser = clink.arg.new_parser()
clink.arg.register_parser("make", make_parser)

local md5sum__parser = clink.arg.new_parser()
clink.arg.register_parser("md5sum", md5sum_parser)

local mkfifo_parser = clink.arg.new_parser()
clink.arg.register_parser("mkfifo", mkfifo_parser)

local mknod_parser = clink.arg.new_parser()
clink.arg.register_parser("mknod", mknod_parser)

local mv_parser = clink.arg.new_parser()
clink.arg.register_parser("mv", mv_parser)

local ncftp_parser = clink.arg.new_parser()
clink.arg.register_parser("ncftp", ncftp_parser)

local nl_parser = clink.arg.new_parser()
clink.arg.register_parser("nl", nl_parser)

local od_parser = clink.arg.new_parser()
clink.arg.register_parser("od", od_parser)

local paste_parser = clink.arg.new_parser()
paste_parser:set_flags(
	"-d", "--delimiters",
	"-s", "--serial",
	"--help",
	"--version"
)
clink.arg.register_parser("paste", paste_parser)

local patch_parser = clink.arg.new_parser()
patch_parser:set_flags(
	"-p", "--strip",
	"-F", "--fuzz",
	"-l", "--ignore-whitespace",
	"-c", "--context",
	"-e", "--ed",
	"-n", "--normal",
	"-u", "--unified",
	"-N", "--forward",
	"-R", "--reverse",
	"-i", "--input",
	"-o", "--output",
	"-r", "--reject-file",
	"-D", "--ifdef",
	"-E", "--remove-empty-files",
	"-Z", "--set-utc",
	"-T", "--set-time",
	"--quoting-style",
	"-b", "--backup",
	"--backup-if-mismatch",
	"--no-backup-if-mismatch",
	"-V", "--version-control",
	"-B", "--prefix",
	"-Y", "--basename-prefix",
	"-z", "--suffix",
	"-g", "--get",
	"-t", "--batch",
	"-f", "--force",
	"-s", "--quiet", "--silent",
	"--verbose",
	"--dry-run",
	"--posix",
	"--unified-reject-files",
	"--global-reject-file",
	"-d", "--directory",
	"--binary",
	"-v", "--version",
	"--help"
)
clink.arg.register_parser("patch", patch_parser)

local pathchk_parser = clink.arg.new_parser()
pathchk_parser:set_flags(
	"-p", "--portability",
	"--help",
	"--version"
)
clink.arg.register_parser("pathchk", pathchk_parser)

local pr_parser = clink.arg.new_parser()
pr_parser:set_flags(
	"--columns",
	"-a", "--across",
	"-c", "--show-control-chars",
	"-d", "--double-space",
	"-D", "--date-format",
	"-e", "--expand-tabs",
	"-F", "-f", "--form-feed",
	"-h", "--header",
	"-i", "--output-tabs",
	"-J", "--join-lines",
	"-l", "--length",
	"-m", "--merge",
	"-n", "--number-lines",
	"-N", "--first-line-number",
	"-o", "--indent",
	"-r", "--no-file-warnings",
	"-s", "--separator",
	"-S", "--sep-string",
	"-t", "--omit-header",
	"-T", "--omit-pagination",
	"-v", "--show-nonprinting",
	"-w", "--width",
	"-W", "--page-width",
	"--help",
	"--version"
)
clink.arg.register_parser("pr", pr_parser)

clink.arg.register_parser("printenv", clink.arg.new_parser():set_flags("--help", "--version"))
clink.arg.register_parser("printf", clink.arg.new_parser():set_flags("--help", "--version"))

local pscp_parser = clink.arg.new_parser()
pscp_parser:set_flags(
	"-ls",
	"-p",
	"-q",
	"-r",
	"-batch",
	"-sftp", "-scp"
)
clink.arg.register_parser("pscp", pscp_parser)

local psftp_parser = clink.arg.new_parser()
psftp_parser:set_flags(
	"-b",
	"-bc",
	"-be",
	"-batch"
)
clink.arg.register_parser("psftp", psftp_parser)

local putty_parser = clink.arg.new_parser()
putty_parser:set_flags(
	"-cleanup",
	"-load",
	"-ssh", "-telnet", "-rlogin", "-raw", "-serial",
	"-v",
	"-l",
	"-l",
	"-L", "-R", "-D",
	"-m",
	"-P",
	"-pw",
	"-agent", "-noagent",
	"-A", "-a",
	"-X", "-x",
	"-t", "-T",
	"-N",
	"-nc",
	"-C",
	"-1", "-2",
	"-4", "-6",
	"-i",
	"-loghost",
	"-pgpfp",
	"-sercfg"
)
clink.arg.register_parser("putty", putty_parser)

clink.arg.register_parser("pwd", clink.arg.new_parser():set_flags("--help", "--version"))

local rm_parser = clink.arg.new_parser()
rm_parser:set_flags(
	"-d", "--directory",
	"-f", "--force",
	"-i", "--interactive",
	"--no-preserve-root",
	"--preserve-root",
	"-r", "-R", "--recursive",
	"-v", "--verbose",
	"--help",
	"--version"
)
clink.arg.register_parser("rm", rm_parser)
----------------------------------------------------------------------------

local sdiff_parser = clink.arg.new_parser()
sdiff_parser:set_flags()
clink.arg.register_parser("sdiff", sdiff_parser)

local sed_parser = clink.arg.new_parser()
sed_parser:set_flags()
clink.arg.register_parser("sed", sed_parser)

local seq_parser = clink.arg.new_parser()
seq_parser:set_flags()
clink.arg.register_parser("seq", seq_parser)

local sha1sum_parser = clink.arg.new_parser()
sha1sum_parser:set_flags()
clink.arg.register_parser("sha1sum", sha1sum_parser)

local shar_parser = clink.arg.new_parser()
shar_parser:set_flags()
clink.arg.register_parser("shar", shar_parser)

local sleep_parser = clink.arg.new_parser()
sleep_parser:set_flags()
clink.arg.register_parser("sleep", sleep_parser)

local sort_parser = clink.arg.new_parser()
sort_parser:set_flags()
clink.arg.register_parser("sort", sort_parser)

local split_parser = clink.arg.new_parser()
split_parser:set_flags()
clink.arg.register_parser("split", split_parser)

local su_parser = clink.arg.new_parser()
su_parser:set_flags()
clink.arg.register_parser("su", su_parser)

local sum_parser = clink.arg.new_parser()
sum_parser:set_flags()
clink.arg.register_parser("sum", sum_parser)

local sync_parser = clink.arg.new_parser()
sync_parser:set_flags()
clink.arg.register_parser("sync", sync_parser)

local tac_parser = clink.arg.new_parser()
tac_parser:set_flags()
clink.arg.register_parser("tac", tac_parser)

local tail_parser = clink.arg.new_parser()
tail_parser:set_flags()
clink.arg.register_parser("tail", tail_parser)

local tar_parser = clink.arg.new_parser()
tar_parser:set_flags()
clink.arg.register_parser("tar", tar_parser)

local tee_parser = clink.arg.new_parser()
tee_parser:set_flags()
clink.arg.register_parser("tee", tee_parser)

local touch_parser = clink.arg.new_parser()
touch_parser:set_flags()
clink.arg.register_parser("touch", touch_parser)

local tr_parser = clink.arg.new_parser()
tr_parser:set_flags()
clink.arg.register_parser("tr", tr_parser)

local uname_parser = clink.arg.new_parser()
uname_parser:set_flags()
clink.arg.register_parser("uname", uname_parser)

local unexpand_parser = clink.arg.new_parser()
unexpand_parser:set_flags()
clink.arg.register_parser("unexpand", unexpand_parser)

local uniq_parser = clink.arg.new_parser()
uniq_parser:set_flags()
clink.arg.register_parser("uniq", uniq_parser)

local unix2dos__parser = clink.arg.new_parser()
unix2dos_parser:set_flags()
clink.arg.register_parser("unix2dos", unix2dos_parser)

local unlink_parser = clink.arg.new_parser()
unlink_parser:set_flags()
clink.arg.register_parser("unlink", unlink_parser)

local unrar_parser = clink.arg.new_parser()
unrar_parser:set_flags()
clink.arg.register_parser("unrar", unrar_parser)

local unshar_parser = clink.arg.new_parser()
unshar_parser:set_flags()
clink.arg.register_parser("unshar", unshar_parser)

local uudecode_parser = clink.arg.new_parser()
uudecode_parser:set_flags()
clink.arg.register_parser("uudecode", uudecode_parser)

local uuencode_parser = clink.arg.new_parser()
uuencode_parser:set_flags()
clink.arg.register_parser("uuencode", uuencode_parser)

local vim_parser = clink.arg.new_parser()
vim_parser:set_flags()
clink.arg.register_parser("vim", vim_parser)

local wc_parser = clink.arg.new_parser()
wc_parser:set_flags()
clink.arg.register_parser("wc", wc_parser)

local wget_parser = clink.arg.new_parser()
wget_parser:set_flags(
	"-V", "--version",
	"-h", "--help",
	"-b", "--background",
	"-e", "--execute",
	"-o", "--output-file",
	"-a", "--append-output",
	"-d", "--debug",
	"-q", "--quiet",
	"-v", "--verbose",
	"-nv", "--no-verbose",
	"-i", "--input-file",
	"-F", "--force-html",
	"-B", "--base",
	"-t", "--tries",
	"--retry-connrefused",
	"-O", "--output-document",
	"-nc", "--no-clobber",
	"-c", "--continue",
	"--progress",
	"-N", "--timestamping",
	"-S", "--server-response",
	"--spider",
	"-T", "--timeout",
	"--dns-timeout",
	"--connect-timeout",
	"--read-timeout",
	"-w", "--wait",
	"--waitretry",
	"--random-wait",
	"--no-proxy",
	"-Q", "--quota",
	"--bind-address",
	"--limit-rate",
	"--no-dns-cache",
	"--restrict-file-names",
	"--ignore-case",
	"-4", "--inet4-only",
	"-6", "--inet6-only",
	"--prefer-family",
	"--user",
	"--password",
	"-nd", "--no-directories",
	"-x", "--force-directories",
	"-nH", "--no-host-directories",
	"--protocol-directories",
	"-P", "--directory-prefix",
	"--cut-dirs",
	"--http-user",
	"--http-password",
	"--no-cache",
	"-E", "--html-extension",
	"--ignore-length",
	"--header",
	"--max-redirect",
	"--proxy-user",
	"--proxy-password",
	"--referer",
	"--save-headers",
	"-U", "--user-agent",
	"--no-http-keep-alive",
	"--no-cookies",
	"--load-cookies",
	"--save-cookies",
	"--keep-session-cookies",
	"--post-data",
	"--post-file",
	"--content-disposition",
	"--auth-no-challenge",
	"--secure-protocol",
	"--no-check-certificate",
	"--certificate",
	"--certificate-type",
	"--private-key",
	"--private-key-type",
	"--ca-certificate",
	"--ca-directory",
	"--random-file",
	"--egd-file",
	"--ftp-user",
	"--ftp-password",
	"--no-remove-listing",
	"--no-glob",
	"--no-passive-ftp",
	"--retr-symlinks",
	"--preserve-permissions",
	"-r", "--recursive",
	"-l", "--level",
	"--delete-after",
	"-k", "--convert-links",
	"-K", "--backup-converted",
	"-m", "--mirror",
	"-p", "--page-requisites",
	"--strict-comments",
	"-A", "--accept",
	"-R", "--reject",
	"-D", "--domains",
	"--exclude-domains",
	"--follow-ftp",
	"--follow-tags",
	"--ignore-tags",
	"-H", "--span-hosts",
	"-L", "--relative",
	"-I", "--include-directories",
	"-X", "--exclude-directories",
	"-np", "--no-parent"
);
clink.arg.register_parser("wget", wget_parser)

local which_parser = clink.arg.new_parser()
which_parser:set_flags(
	"--skip-dot",
	"--skip-tilde",
	"--show-dot",
	"--show-tilde",
	"--tty-only",
	"--all", "-a",
	"--read-alias", "-i",
	"--skip-alias",
	"--read-functions",
	"--skip-functions",
	"--version", "-v", "-V",
	"--help"
)
clink.arg.register_parser("which", which_parser)

local whoami_parser = clink.arg.new_parser()
whoami_parser:set_flags(
	"/UPN",
	"/FQDN",
	"/USER",
	"/GROUPS",
	"/PRIV",
	"/LOGONID",
	"/ALL",
	"/FO",
	"/NH",
	"/?",
	"--help"
)
clink.arg.register_parser("whoami", whoami_parser)

local xargs_parser = clink.arg.new_parser()
xargs_parser:set_flags(
	"-0",
	"-p",
	"-r",
	"-t",
	"-x",
	"--null",
	"-e", "--eof",
	"-i", "--replace",
	"-l", "--max-lines",
	"--interactive",
	"-s", "--max-chars",
	"--verbose",
	"--exit",
	"-P", "--max-procs",
	"-n", "--max-args",
	"--no-run-if-empty",
	"--arg-file=file",
	"--version",
	"--help"
)
clink.arg.register_parser("xargs", xargs_parser)

clink.arg.register_parser("yes", clink.arg.new_parser():set_flags("--help", "--version"))

local zip_parser = clink.arg.new_parser()
zip_parser:set_flags(
	"-f",
	"-u",
	"-d",
	"-m",
	"-r",
	"-j",
	"-0",
	"-l",
	"-1",
	"-9",
	"-q",
	"-v",
	"-c",
	"-z",
	"-@",
	"-o",
	"-x",
	"-i",
	"-F",
	"-D",
	"-A",
	"-J",
	"-T",
	"-X",
	"-!",
	"-$",
	"-S",
	"-e",
	"-n",
	"-h2",
	"--help"
)
clink.arg.register_parser("zip", zip_parser)

local unzip_parser = clink.arg.new_parser()
unzip_parser:set_flags(
	"-p",
	"-l",
	"-f",
	"-t",
	"-u",
	"-z",
	"-v",
	"-T",
	"-x",
	"-d",
	"-n",
	"-q",
	"-o",
	"-a",
	"-j",
	"-aa",
	"-C",
	"-L",
	"-$",
	"-V",
	"-X",
	"-s",
	"-M",
	"--help"
)
clink.arg.register_parser("unzip", unzip_parser)
