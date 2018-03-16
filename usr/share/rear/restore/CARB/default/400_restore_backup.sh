# This file is part of Relax-and-Recover, licensed under the GNU General
# Public License. Refer to the included COPYING for full text of license.
#
# 400_restore_backup.sk

# Switch current working directory or die.
pushd /opt/BUAgent >/dev/null
StopIfError "Could not change directory to /opt/BUAgent"

LogPrint "Recovering from carbonite vault"

builtin trap "echo USR2!" USR2
./VV RESTORE ttt /param=ttt_00000001.vpr

LogPrintIfError "Error was reported during carbonite restore"
popd >/dev/null

