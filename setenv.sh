#!/bin/sh
#
# Set up environment variables for general build tool to operate
#
if ! [ -f ./setenv.sh ]; then
	echo "Need to source from the setenv.sh directory" >&2
	return 0
fi

export PORT_ROOT="${PWD}"
export PORT_TYPE="TARBALL"

PORT_TARBALL_DIR=top-3.7
export PORT_TARBALL_URL="https://sourceforge.net/projects/unixtop/files/unixtop/${PORT_TARBALL_DIR}/${PORT_TARBALL_DIR}.tar.gz"
export PORT_TARBALL_DEPS="curl gzip make m4"

export PORT_EXTRA_LDFLAGS=""
