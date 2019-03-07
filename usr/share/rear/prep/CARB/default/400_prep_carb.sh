#
# prepare stuff for CARB
#

COPY_AS_IS=( "${COPY_AS_IS[@]}" "${COPY_AS_IS_CARB[@]}")
COPY_AS_IS_EXCLUDE=( "${COPY_AS_IS_EXCLUDE[@]}" "${COPY_AS_IS_EXCLUDE_CARB[@]}" )
PROGS=( "${PROGS[@]}" "${PROGS_CARB[@]}")

# following is to enabling selinux in rescue kernel,besides change for kernel command, you need to
# add "/etc/selinux" to COPY_AS_IS and "getenforce setenforce setstatus setfiles chcon reestorecon"
# to PROGS
# alter kernel command line to explicitly enable SELinux (append "selinux=1" if no selinux=0 exists)
# KERNEL_CMDLINE=$(echo $KERNEL_CMDLINE | sed -e 's/selinux=0/selinux=1/')
# echo $KERNEL_CMDLINE | grep -q 'selinux=1' || KERNEL_CMDLINE="$KERNEL_CMDLINE selinux=1"
