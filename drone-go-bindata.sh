#!/bin/bash

echo "args:"$PLUGIN_ARGS
echo "------------------"
cmd="/bin/go-bindata $PLUGIN_ARGS"
eval $cmd