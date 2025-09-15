#!/bin/sh

ACK_FILE="$SNAP_USER_COMMON/.snap_acked"

if [ ! -f "$ACK_FILE" ]; then
    echo ""
    echo "Caution: You are using the Snap version of curl."
    echo "Due to Snap's sandbox nature, this version has some limitations."
    echo "For example, it may not be able to access hidden folders in your home directory"
    echo "or other restricted areas of the os."
    echo "This means you may encounter errors when using snap curl to download files."
    echo "For those case, you might want to use the native curl package."
    echo "For details, see: https://github.com/boukendesho/curl-snap/issues/1"
    echo ""
    echo "To stop seeing this message, run the following command:"
    echo "curl.snap-acked"
    echo ""
fi

$SNAP/usr/local/bin/curl "$@"