#!/bin/bash

if [[ $# != 1 ]]; then
   echo "Usage: $0 YOUR_BIN_DIR"
   exit 1
fi

bin="$(realpath $1)"
here="$(dirname $(realpath $0))"

if [[ ! -e "$bin" ]]; then
    echo "Error: ${bin} does not exist."
    exit 1
fi

if [[ ! -d "$bin" ]]; then
    echo "Error: ${bin} is no directory."
    exit 1
fi

if [[ ! -w "$bin" ]]; then
    echo "Error: ${bin} is not writable."
    exit 1
fi

script_list=(
ankicount
ankidoublecolon    
)

for s in "${script_list[@]}"; do
    ln -sf "${here}/${s}.sh" "${bin}/${s}"
done
