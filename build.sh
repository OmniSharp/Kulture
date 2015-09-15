#!/bin/bash
# Add DNX to path and trigger build
ver=`cat ~/.dnx/alias/default.alias`
add_to_path=$HOME"/.dnx/runtimes/"$ver"/bin"
export PATH=$PATH:/usr/local/bin:$add_to_path
[ -s $HOME"/.dnx/dnvm/dnvm.sh" ] && . $HOME"/.dnx/dnvm/dnvm.sh"

dnu build
