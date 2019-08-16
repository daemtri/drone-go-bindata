#!/bin/bash

cmd="/bin/go-bindata"

if [ -n "$PLUGIN_OUTPUT" ]; then
    cmd="$cmd -o $PLUGIN_OUTPUT"
fi
if [ -n "$PLUGIN_PKG" ]; then
    cmd="$cmd -pkg $PLUGIN_PKG"
fi
if [ -n "$PLUGIN_IGNORE" ]; then
    cmd="$cmd -ignore $PLUGIN_IGNORE"
fi
if [ -n "$PLUGIN_FS" ]; then
    cmd="$cmd -fs $PLUGIN_FS"
fi
if [ -n "$PLUGIN_MODE" ]; then
    cmd="$cmd -mode $PLUGIN_MODE"
fi
if [ -n "$PLUGIN_MODTIME" ]; then
    cmd="$cmd -modtime $PLUGIN_MODTIME"
fi
if [ -n "$PLUGIN_NOCOMPRESS" ]; then
    cmd="$cmd -nocompress $PLUGIN_NOCOMPRESS"
fi
if [ -n "$PLUGIN_NOMEMCOPY" ]; then
    cmd="$cmd -nomemcopy $PLUGIN_NOMEMCOPY"
fi
if [ -n "$PLUGIN_NOMETADATA" ]; then
    cmd="$cmd -nometadata $PLUGIN_NOMETADATA"
fi
if [ -n "$PLUGIN_NOMETADATA" ]; then
    cmd="$cmd -nometadata $PLUGIN_NOMETADATA"
fi
if [ -n "$PLUGIN_PREFIX" ]; then
    cmd="$cmd -prefix $PLUGIN_PREFIX"
fi
if [ -n "$PLUGIN_TAGS" ]; then
    cmd="$cmd -tags $PLUGIN_TAGS"
fi

cmd="$cmd $PLUGIN_INPUT"

echo $cmd
eval $cmd