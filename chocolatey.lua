local chocolatey_prerelease_flags = {"-pre", "-prerelease"}
local chocolatey_localonly_flags = {"-lo", "-localonly"}
local chocolatey_install_parser = clink.arg.new_parser()
chocolatey_install_parser:set_flags(
	"-version",
	chocolatey_prerelease_flags,
	"-source" .. clink.arg.new_parser():set_arguments({"ruby", "webpi", "cygwin", "python"}),
	"-o", "-override", "-overrideArgs", "-overrideArguments",
	"-ia", "-installArgs", "-installArguments",
	"-notSilent"
	)
local chocolatey_update_parser = clink.arg.new_parser()
chocolatey_update_parser:set_flags(
	chocolatey_prerelease_flags,
	"-source"
	)
chocolatey_update_parser:set_arguments({"all"})
local chocolatey_list_parser = clink.arg.new_parser()
chocolatey_list_parser:set_flags(
	"-all", "-allversions",
	chocolatey_prerelease_flags,
	"-source" .. clink.arg.new_parser():set_arguments({"webpi", "windowsfeatures"})
	)
local chocolatey_version_parser = clink.arg.new_parser()
chocolatey_version_parser:set_flags(
	chocolatey_prerelease_flags,
	chocolatey_localonly_flags,
	"-source"
	)
chocolatey_version_parser:set_arguments({"all"})
local chocolatey_parser = clink.arg.new_parser()
chocolatey_parser:set_arguments({
	"install" .. chocolatey_install_parser,
	"update" .. chocolatey_update_parser,
	"uninstall" .. clink.arg.new_parser():set_flags("-version"),
	"list" .. chocolatey_list_parser,
	"search" .. chocolatey_list_parser,
	"version" .. chocolatey_list_parser,
	"help"
	})
clink.arg.register_parser('chocolatey', chocolatey_parser)
clink.arg.register_parser('choco', chocolatey_parser)
