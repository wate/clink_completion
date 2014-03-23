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
local plink_parser = clink.arg.new_parser()
plink_parser:set_flags(
	"-V",
	"-pgpfp",
	"-v",
	"-load",
	"-ssh", "-telnet", "-rlogin", "-raw", "-serial",
	"-P",
	"-l",
	"-batch",
	"-pw",
	"-D",
	"-L",
	"-R",
	"-X", "-x",
	"-A", "-a",
	"-t", "-T",
	"-1", "-2",
	"-4", "-6",
	"-C",
	"-i",
	"-noagent",
	"-agent",
	"-m",
	"-s",
	"-N",
	"-nc",
	"-sercfg"
)
clink.arg.register_parser("plink", plink_parser)
clink.arg.register_parser("putty", plink_parser)
local whoami_parser = clink.arg.new_parser()
whoami_parser:set_flags(
	"-UPN",
	"-FQDN",
	"-USER",
	"-GROUPS",
	"-PRIV",
	"-LOGONID",
	"-ALL",
	"-FO",
	"-NH"
)
clink.arg.register_parser("whoami", whoami_parser)
local ipconfig_parser = clink.arg.new_parser()
ipconfig_parser:set_flags(
	"-all",
	"-release",
	"-release6",
	"-renew",
	"-renew6",
	"-flushdns",
	"-registerdns",
	"-displaydns",
	"-showclassid",
	"-setclassid",
	"-showclassid6",
	"-setclassid6"
)
clink.arg.register_parser("ipconfig", ipconfig_parser)
