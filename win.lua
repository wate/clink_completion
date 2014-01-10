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
