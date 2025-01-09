#!/usr/bin/env bash

# TODO Check dependencies

CLEAN=0

for PARAM in $@; do
    case $PARAM in
	-c|--clean)
	    CLEAN=1
	    ;;
	-h|--help)
	    echo Help message
	    exit
	    ;;
    esac
done

PROJECT_ROOT=$(realpath $(dirname ${BASH_SOURCE[0]})/..)
SCONS_BUILD_DIR=$PROJECT_ROOT/SCons

# TODO Install symlinks

if (( $CLEAN )); then
    find $PROJECT_ROOT -type l -name SConstruct -delete
    exit
fi

pushd $SCONS_BUILD_DIR > /dev/null
for SC in $(find . -name SConstruct); do
    pushd $PROJECT_ROOT/$(dirname $SC) > /dev/null
    ln -sr $SCONS_BUILD_DIR/$SC
    popd > /dev/null
done
popd > /dev/null
