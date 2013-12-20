local awkparser = clink.arg.new_parser()
clink.arg.register_parser("awk", awk_parser)

local basenameparser = clink.arg.new_parser()
clink.arg.register_parser("basename", basename_parser)

local bashparser = clink.arg.new_parser()
clink.arg.register_parser("bash", bash_parser)

local bcparser = clink.arg.new_parser()
clink.arg.register_parser("bc", bc_parser)

local bisonparser = clink.arg.new_parser()
clink.arg.register_parser("bison", bison_parser)

local bunzip2_parser = clink.arg.new_parser()
clink.arg.register_parser("bunzip2", bunzip2_parser)

local bzip2_parser = clink.arg.new_parser()
clink.arg.register_parser("bzip2", bzip2_parser)

local bzip2recover_parser = clink.arg.new_parser()
clink.arg.register_parser("bzip2recover", bzip2recover_parser)

local catparser = clink.arg.new_parser()
clink.arg.register_parser("cat", cat_parser)

local chgrpparser = clink.arg.new_parser()
clink.arg.register_parser("chgrp", chgrp_parser)

local chmodparser = clink.arg.new_parser()
clink.arg.register_parser("chmod", chmod_parser)

local chownparser = clink.arg.new_parser()
clink.arg.register_parser("chown", chown_parser)

local chrootparser = clink.arg.new_parser()
clink.arg.register_parser("chroot", chroot_parser)

local cksumparser = clink.arg.new_parser()
clink.arg.register_parser("cksum", cksum_parser)

local cpparser = clink.arg.new_parser()
clink.arg.register_parser("cp", cp_parser)

local csplitparser = clink.arg.new_parser()
clink.arg.register_parser("csplit", csplit_parser)

local curlparser = clink.arg.new_parser()
clink.arg.register_parser("curl", curl_parser)

local cutparser = clink.arg.new_parser()
clink.arg.register_parser("cut", cut_parser)

local dcparser = clink.arg.new_parser()
clink.arg.register_parser("dc", dc_parser)

local ddparser = clink.arg.new_parser()
clink.arg.register_parser("dd", dd_parser)

local dfparser = clink.arg.new_parser()
clink.arg.register_parser("df", df_parser)

local diffparser = clink.arg.new_parser()
clink.arg.register_parser("diff", diff_parser)

local diff3_parser = clink.arg.new_parser()
clink.arg.register_parser("diff3", diff3_parser)

local dirnameparser = clink.arg.new_parser()
clink.arg.register_parser("dirname", dirname_parser)

local dos2unix_parser = clink.arg.new_parser()
clink.arg.register_parser("dos2unix", dos2unix_parser)

local duparser = clink.arg.new_parser()
clink.arg.register_parser("du", du_parser)

local egrepparser = clink.arg.new_parser()
clink.arg.register_parser("egrep", egrep_parser)

local envparser = clink.arg.new_parser()
clink.arg.register_parser("env", env_parser)

local expandparser = clink.arg.new_parser()
clink.arg.register_parser("expand", expand_parser)

local exprparser = clink.arg.new_parser()
clink.arg.register_parser("expr", expr_parser)

local factorparser = clink.arg.new_parser()
clink.arg.register_parser("factor", factor_parser)

local fgrepparser = clink.arg.new_parser()
clink.arg.register_parser("fgrep", fgrep_parser)

local flexparser = clink.arg.new_parser()
clink.arg.register_parser("flex", flex_parser)

local fmtparser = clink.arg.new_parser()
clink.arg.register_parser("fmt", fmt_parser)

local foldparser = clink.arg.new_parser()
clink.arg.register_parser("fold", fold_parser)

local gawkparser = clink.arg.new_parser()
clink.arg.register_parser("gawk", gawk_parser)

local gfindparser = clink.arg.new_parser()
clink.arg.register_parser("gfind", gfind_parser)

local grepparser = clink.arg.new_parser()
clink.arg.register_parser("grep", grep_parser)

local gsarparser = clink.arg.new_parser()
clink.arg.register_parser("gsar", gsar_parser)

local gzipparser = clink.arg.new_parser()
clink.arg.register_parser("gzip", gzip_parser)

local headparser = clink.arg.new_parser()
clink.arg.register_parser("head", head_parser)

local hostidparser = clink.arg.new_parser()
clink.arg.register_parser("hostid", hostid_parser)

local hostnameparser = clink.arg.new_parser()
clink.arg.register_parser("hostname", hostname_parser)

local idparser = clink.arg.new_parser()
clink.arg.register_parser("id", id_parser)

local indentparser = clink.arg.new_parser()
clink.arg.register_parser("indent", indent_parser)

local installparser = clink.arg.new_parser()
clink.arg.register_parser("install", install_parser)

local joinparser = clink.arg.new_parser()
clink.arg.register_parser("join", join_parser)

local jwhoisparser = clink.arg.new_parser()
clink.arg.register_parser("jwhois", jwhois_parser)

local lessparser = clink.arg.new_parser()
clink.arg.register_parser("less", less_parser)

local lesskeyparser = clink.arg.new_parser()
clink.arg.register_parser("lesskey", lesskey_parser)

local lnparser = clink.arg.new_parser()
clink.arg.register_parser("ln", ln_parser)

local lsparser = clink.arg.new_parser()
clink.arg.register_parser("ls", ls_parser)

local m4_parser = clink.arg.new_parser()
clink.arg.register_parser("m4", m4_parser)

local makeparser = clink.arg.new_parser()
clink.arg.register_parser("make", make_parser)

local md5sum_parser = clink.arg.new_parser()
clink.arg.register_parser("md5sum", md5sum_parser)

local mkfifoparser = clink.arg.new_parser()
clink.arg.register_parser("mkfifo", mkfifo_parser)

local mknodparser = clink.arg.new_parser()
clink.arg.register_parser("mknod", mknod_parser)

local mvparser = clink.arg.new_parser()
clink.arg.register_parser("mv", mv_parser)

local ncftpparser = clink.arg.new_parser()
clink.arg.register_parser("ncftp", ncftp_parser)

local nlparser = clink.arg.new_parser()
clink.arg.register_parser("nl", nl_parser)

local odparser = clink.arg.new_parser()
clink.arg.register_parser("od", od_parser)

local pageantparser = clink.arg.new_parser()
clink.arg.register_parser("pageant", pageant_parser)

local pasteparser = clink.arg.new_parser()
clink.arg.register_parser("paste", paste_parser)

local patchparser = clink.arg.new_parser()
clink.arg.register_parser("patch", patch_parser)

local pathchkparser = clink.arg.new_parser()
clink.arg.register_parser("pathchk", pathchk_parser)

local plinkparser = clink.arg.new_parser()
clink.arg.register_parser("plink", plink_parser)

local prparser = clink.arg.new_parser()
clink.arg.register_parser("pr", pr_parser)

local printenvparser = clink.arg.new_parser()
clink.arg.register_parser("printenv", printenv_parser)

local printfparser = clink.arg.new_parser()
clink.arg.register_parser("printf", printf_parser)

local pscpparser = clink.arg.new_parser()
clink.arg.register_parser("pscp", pscp_parser)

local psftpparser = clink.arg.new_parser()
clink.arg.register_parser("psftp", psftp_parser)

local puttyparser = clink.arg.new_parser()
clink.arg.register_parser("putty", putty_parser)

local puttygenparser = clink.arg.new_parser()
clink.arg.register_parser("puttygen", puttygen_parser)

local pwdparser = clink.arg.new_parser()
clink.arg.register_parser("pwd", pwd_parser)

local rmparser = clink.arg.new_parser()
clink.arg.register_parser("rm", rm_parser)

local sdiffparser = clink.arg.new_parser()
clink.arg.register_parser("sdiff", sdiff_parser)

local sedparser = clink.arg.new_parser()
clink.arg.register_parser("sed", sed_parser)

local seqparser = clink.arg.new_parser()
clink.arg.register_parser("seq", seq_parser)

local sha1sum_parser = clink.arg.new_parser()
clink.arg.register_parser("sha1sum", sha1sum_parser)

local sharparser = clink.arg.new_parser()
clink.arg.register_parser("shar", shar_parser)

local sleepparser = clink.arg.new_parser()
clink.arg.register_parser("sleep", sleep_parser)

local sortparser = clink.arg.new_parser()
clink.arg.register_parser("sort", sort_parser)

local splitparser = clink.arg.new_parser()
clink.arg.register_parser("split", split_parser)

local suparser = clink.arg.new_parser()
clink.arg.register_parser("su", su_parser)

local sumparser = clink.arg.new_parser()
clink.arg.register_parser("sum", sum_parser)

local syncparser = clink.arg.new_parser()
clink.arg.register_parser("sync", sync_parser)

local tacparser = clink.arg.new_parser()
clink.arg.register_parser("tac", tac_parser)

local tailparser = clink.arg.new_parser()
clink.arg.register_parser("tail", tail_parser)

local tarparser = clink.arg.new_parser()
clink.arg.register_parser("tar", tar_parser)

local teeparser = clink.arg.new_parser()
clink.arg.register_parser("tee", tee_parser)

local testparser = clink.arg.new_parser()
clink.arg.register_parser("test", test_parser)

local touchparser = clink.arg.new_parser()
clink.arg.register_parser("touch", touch_parser)

local trparser = clink.arg.new_parser()
clink.arg.register_parser("tr", tr_parser)

local unameparser = clink.arg.new_parser()
clink.arg.register_parser("uname", uname_parser)

local unexpandparser = clink.arg.new_parser()
clink.arg.register_parser("unexpand", unexpand_parser)

local uniqparser = clink.arg.new_parser()
clink.arg.register_parser("uniq", uniq_parser)

local unix2dos_parser = clink.arg.new_parser()
clink.arg.register_parser("unix2dos", unix2dos_parser)

local unlinkparser = clink.arg.new_parser()
clink.arg.register_parser("unlink", unlink_parser)

local unrarparser = clink.arg.new_parser()
clink.arg.register_parser("unrar", unrar_parser)

local unsharparser = clink.arg.new_parser()
clink.arg.register_parser("unshar", unshar_parser)

local uudecodeparser = clink.arg.new_parser()
clink.arg.register_parser("uudecode", uudecode_parser)

local uuencodeparser = clink.arg.new_parser()
clink.arg.register_parser("uuencode", uuencode_parser)

local vimparser = clink.arg.new_parser()
clink.arg.register_parser("vim", vim_parser)

local wcparser = clink.arg.new_parser()
clink.arg.register_parser("wc", wc_parser)

local wgetparser = clink.arg.new_parser()
clink.arg.register_parser("wget", wget_parser)

local whichparser = clink.arg.new_parser()
clink.arg.register_parser("which", which_parser)

local whoamiparser = clink.arg.new_parser()
clink.arg.register_parser("whoami", whoami_parser)

local xargsparser = clink.arg.new_parser()
clink.arg.register_parser("xargs", xargs_parser)

local yesparser = clink.arg.new_parser()
clink.arg.register_parser("yes", yes_parser)

local zipparser = clink.arg.new_parser()
clink.arg.register_parser("zip", zip_parser)

