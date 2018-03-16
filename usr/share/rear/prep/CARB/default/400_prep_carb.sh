#
# prepare stuff for CARB
#

COPY_AS_IS=( "${COPY_AS_IS[@]}" "${COPY_AS_IS_CARB[@]}" )
COPY_AS_IS_EXCLUDE=( "${COPY_AS_IS_EXCLUDE[@]}" "${COPY_AS_IS_EXCLUDE_CARB[@]}" )
PROGS=( "${PROGS[@]}" "${PROGS_CARB[@]}" )
