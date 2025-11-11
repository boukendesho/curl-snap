#!/bin/sh

ACK_FILE="$SNAP_USER_COMMON/.snap_acked"

if [ ! -f "$ACK_FILE" ]; then
    cat << EOL >&2

    Caution: You are using the Snap version of curl.
    Due to Snap's sandbox nature, this version has some limitations.
    For example, it may not be able to access hidden folders in your home directory
    or other restricted areas of the os.

    Which means you may encounter errors when using snap curl to download and execute some script.
    For those cases, you might want to use the native curl package.
    For details, see: https://github.com/boukendesho/curl-snap/issues/1
    
    To stop seeing this message, run the following command:
    curl.snap-acked

EOL

fi

$SNAP/usr/local/bin/curl "$@"