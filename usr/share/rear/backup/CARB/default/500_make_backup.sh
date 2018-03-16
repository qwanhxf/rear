# This file is part of Relax-and-Recover, licensed under the GNU General
# Public License. Refer to the included COPYING for full text of license.
#
# 500_make_backup.sh

include_list=()

# Check if backup-include.txt (created by 400_create_include_exclude_files.sh),
# really exists.
if [ ! -r $TMP_DIR/backup-include.txt ]; then
    Error "Can't find include list"
fi

#TODO: update vvc file with include/exclude info

# Only in ReaR verbose mode also show borg progress output and stats
#local borg_progress=''
#test "$verbose" && borg_progress='--progress --stats'
LogPrint "backup to carbonite vault"
builtin trap "echo USR2!" USR2
# Start actual VV backup.
/opt/BUAgent/VV BACKUP ttt 0<&6 1>&7 2>&8

#StopIfError "Failed to create backup"

