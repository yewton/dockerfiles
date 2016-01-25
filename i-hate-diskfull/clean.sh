#!/bin/bash -xue
# cf. http://stackoverflow.com/a/5912404/2142831

# Proceed if filesystem capacity is over than the value of CAPACITY (using df POSIX syntax)
# using [ instead of [[ for better error handling.
if [ $(df -P ${MOUNTPOINT} | awk '{ gsub("%",""); capacity = $5 }; END { print capacity }') -gt ${CAPACITY} ]
then
    # remove old files
    find "${TARGETDIR}" -mtime "+${DAYS}" -exec rm -f {} \;
fi
