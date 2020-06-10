#!/usr/local/bin/bash

# Make sure the script exits cleanly in failure
set -e

# Prints out some help info on how to use this
function help {
    echo 'Usage: [command] [type]'
    echo '    1: The command to perform (list/l/generate/g)'
    echo '    2: (Required for generate) The type of gitignore to generate'
    exit 0
}

command=$1
type=$2
case "$command" in
    list)
        command='list'
        ;;
    l)
        command='list'
        ;;
    generate)
        command='generate'
        ;;
    g)
        command='generate'
        ;;
    *)
        help
        exit 0
esac

# Type list
declare -A types=(
    ['mj']='maven,java,osx,intellij+all,git'
    ['gj']='gradle,java,osx,intellij+all,git'
    ['n']='node,osx,git,yarn,visualstudiocode'
    ['r']='react,osx,git,yarn,visualstudiocode'
    ['basic']='osx,vim,visualstudiocode,sublimetext'
)

# Is list
if [ "$command" == "list" ]; then
    listContent='TYPE CONTENTS\n'
    for key in ${!types[@]}; do
        listContent="${listContent}${key}  ${types[${key}]}\n"
    done
    printf "$listContent" | column -t
    exit 0
fi

# Is generate
if [ "$command" == "generate" ]; then
   if [ -z "$type" ]; then
        echo "Please provide a type"
        exit 1
    fi
    echo "You have selected ${type}"
    echo "Downloading your .gitignore into your current directory"
    curl "https://www.toptal.com/developers/gitignore/api/${types[${type}]}" -s --output .gitignore
    echo "Downloaded your .gitignore into your current directory"
    exit 0
fi
